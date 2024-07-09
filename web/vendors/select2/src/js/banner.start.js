(function () {
  // Restore the Select2 AMD loader so it can be used
  // Needed mostly in the language files, where the loader is not inserted
  var S2;

  if (typeof jQuery !== 'undefined' && typeof jQuery.fn.select2 !== 'undefined' && jQuery.fn.select2.amd) {
    S2 = jQuery.fn.select2.amd;
  }

  // Return the AMD loader configuration so it can be used outside of this file
  return {
    define: S2.define,
    require: S2.require
  };
}());
