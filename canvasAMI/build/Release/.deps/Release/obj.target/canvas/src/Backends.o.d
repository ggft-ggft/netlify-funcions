cmd_Release/obj.target/canvas/src/Backends.o := g++ '-DNODE_GYP_MODULE_NAME=canvas' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DHAVE_GIF' '-DHAVE_JPEG' '-DHAVE_RSVG' '-DBUILDING_NODE_EXTENSION' -I/root/.node-gyp/10.16.0/include/node -I/root/.node-gyp/10.16.0/src -I/root/.node-gyp/10.16.0/deps/openssl/config -I/root/.node-gyp/10.16.0/deps/openssl/openssl/include -I/root/.node-gyp/10.16.0/deps/uv/include -I/root/.node-gyp/10.16.0/deps/zlib -I/root/.node-gyp/10.16.0/deps/v8/include -I../../node_modules/nan -I/usr/local/include/cairo -I/usr/local/include/glib-2.0 -I/usr/local/lib/glib-2.0/include -I/usr/local/include/pixman-1 -I/usr/local/include -I/usr/local/include/freetype2 -I/usr/local/include/libpng16 -I/usr/include/uuid -I/usr/local/include/pango-1.0 -I/usr/local/include/harfbuzz -I/usr/local/include/fribidi -I/usr/local/include/librsvg-2.0 -I/usr/include/gdk-pixbuf-2.0  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -fno-rtti -std=gnu++1y -MMD -MF ./Release/.deps/Release/obj.target/canvas/src/Backends.o.d.raw   -c -o Release/obj.target/canvas/src/Backends.o ../src/Backends.cc
Release/obj.target/canvas/src/Backends.o: ../src/Backends.cc \
 ../src/Backends.h ../src/backend/Backend.h \
 /usr/local/include/cairo/cairo.h \
 /usr/local/include/cairo/cairo-version.h \
 /usr/local/include/cairo/cairo-features.h \
 /usr/local/include/cairo/cairo-deprecated.h \
 ../src/backend/../dll_visibility.h ../../node_modules/nan/nan.h \
 /root/.node-gyp/10.16.0/include/node/node_version.h \
 /root/.node-gyp/10.16.0/include/node/uv.h \
 /root/.node-gyp/10.16.0/include/node/uv/errno.h \
 /root/.node-gyp/10.16.0/include/node/uv/version.h \
 /root/.node-gyp/10.16.0/include/node/uv/unix.h \
 /root/.node-gyp/10.16.0/include/node/uv/threadpool.h \
 /root/.node-gyp/10.16.0/include/node/uv/linux.h \
 /root/.node-gyp/10.16.0/include/node/node.h \
 /root/.node-gyp/10.16.0/include/node/v8.h \
 /root/.node-gyp/10.16.0/include/node/v8-version.h \
 /root/.node-gyp/10.16.0/include/node/v8config.h \
 /root/.node-gyp/10.16.0/include/node/v8-platform.h \
 /root/.node-gyp/10.16.0/include/node/node_version.h \
 /root/.node-gyp/10.16.0/include/node/node_buffer.h \
 /root/.node-gyp/10.16.0/include/node/node.h \
 /root/.node-gyp/10.16.0/include/node/node_object_wrap.h \
 ../../node_modules/nan/nan_callbacks.h \
 ../../node_modules/nan/nan_callbacks_12_inl.h \
 ../../node_modules/nan/nan_maybe_43_inl.h \
 ../../node_modules/nan/nan_converters.h \
 ../../node_modules/nan/nan_converters_43_inl.h \
 ../../node_modules/nan/nan_new.h \
 ../../node_modules/nan/nan_implementation_12_inl.h \
 ../../node_modules/nan/nan_persistent_12_inl.h \
 ../../node_modules/nan/nan_weak.h \
 ../../node_modules/nan/nan_object_wrap.h \
 ../../node_modules/nan/nan_private.h \
 ../../node_modules/nan/nan_typedarray_contents.h \
 ../../node_modules/nan/nan_json.h \
 /root/.node-gyp/10.16.0/include/node/v8.h ../src/backend/ImageBackend.h \
 ../src/backend/PdfBackend.h ../src/backend/../closure.h \
 ../src/backend/../Canvas.h ../src/backend/../dll_visibility.h \
 /usr/local/include/pango-1.0/pango/pangocairo.h \
 /usr/local/include/pango-1.0/pango/pango.h \
 /usr/local/include/pango-1.0/pango/pango-attributes.h \
 /usr/local/include/pango-1.0/pango/pango-font.h \
 /usr/local/include/pango-1.0/pango/pango-coverage.h \
 /usr/local/include/glib-2.0/glib.h \
 /usr/local/include/glib-2.0/glib/galloca.h \
 /usr/local/include/glib-2.0/glib/gtypes.h \
 /usr/local/lib/glib-2.0/include/glibconfig.h \
 /usr/local/include/glib-2.0/glib/gmacros.h \
 /usr/local/include/glib-2.0/glib/gversionmacros.h \
 /usr/local/include/glib-2.0/glib/garray.h \
 /usr/local/include/glib-2.0/glib/gasyncqueue.h \
 /usr/local/include/glib-2.0/glib/gthread.h \
 /usr/local/include/glib-2.0/glib/gatomic.h \
 /usr/local/include/glib-2.0/glib/gerror.h \
 /usr/local/include/glib-2.0/glib/gquark.h \
 /usr/local/include/glib-2.0/glib/gutils.h \
 /usr/local/include/glib-2.0/glib/gbacktrace.h \
 /usr/local/include/glib-2.0/glib/gbase64.h \
 /usr/local/include/glib-2.0/glib/gbitlock.h \
 /usr/local/include/glib-2.0/glib/gbookmarkfile.h \
 /usr/local/include/glib-2.0/glib/gbytes.h \
 /usr/local/include/glib-2.0/glib/gcharset.h \
 /usr/local/include/glib-2.0/glib/gchecksum.h \
 /usr/local/include/glib-2.0/glib/gconvert.h \
 /usr/local/include/glib-2.0/glib/gdataset.h \
 /usr/local/include/glib-2.0/glib/gdate.h \
 /usr/local/include/glib-2.0/glib/gdatetime.h \
 /usr/local/include/glib-2.0/glib/gtimezone.h \
 /usr/local/include/glib-2.0/glib/gdir.h \
 /usr/local/include/glib-2.0/glib/genviron.h \
 /usr/local/include/glib-2.0/glib/gfileutils.h \
 /usr/local/include/glib-2.0/glib/ggettext.h \
 /usr/local/include/glib-2.0/glib/ghash.h \
 /usr/local/include/glib-2.0/glib/glist.h \
 /usr/local/include/glib-2.0/glib/gmem.h \
 /usr/local/include/glib-2.0/glib/gnode.h \
 /usr/local/include/glib-2.0/glib/ghmac.h \
 /usr/local/include/glib-2.0/glib/gchecksum.h \
 /usr/local/include/glib-2.0/glib/ghook.h \
 /usr/local/include/glib-2.0/glib/ghostutils.h \
 /usr/local/include/glib-2.0/glib/giochannel.h \
 /usr/local/include/glib-2.0/glib/gmain.h \
 /usr/local/include/glib-2.0/glib/gpoll.h \
 /usr/local/include/glib-2.0/glib/gslist.h \
 /usr/local/include/glib-2.0/glib/gstring.h \
 /usr/local/include/glib-2.0/glib/gunicode.h \
 /usr/local/include/glib-2.0/glib/gkeyfile.h \
 /usr/local/include/glib-2.0/glib/gmappedfile.h \
 /usr/local/include/glib-2.0/glib/gmarkup.h \
 /usr/local/include/glib-2.0/glib/gmessages.h \
 /usr/local/include/glib-2.0/glib/gvariant.h \
 /usr/local/include/glib-2.0/glib/gvarianttype.h \
 /usr/local/include/glib-2.0/glib/goption.h \
 /usr/local/include/glib-2.0/glib/gpattern.h \
 /usr/local/include/glib-2.0/glib/gprimes.h \
 /usr/local/include/glib-2.0/glib/gqsort.h \
 /usr/local/include/glib-2.0/glib/gqueue.h \
 /usr/local/include/glib-2.0/glib/grand.h \
 /usr/local/include/glib-2.0/glib/gregex.h \
 /usr/local/include/glib-2.0/glib/gscanner.h \
 /usr/local/include/glib-2.0/glib/gsequence.h \
 /usr/local/include/glib-2.0/glib/gshell.h \
 /usr/local/include/glib-2.0/glib/gslice.h \
 /usr/local/include/glib-2.0/glib/gspawn.h \
 /usr/local/include/glib-2.0/glib/gstrfuncs.h \
 /usr/local/include/glib-2.0/glib/gstringchunk.h \
 /usr/local/include/glib-2.0/glib/gtestutils.h \
 /usr/local/include/glib-2.0/glib/gthreadpool.h \
 /usr/local/include/glib-2.0/glib/gtimer.h \
 /usr/local/include/glib-2.0/glib/gtrashstack.h \
 /usr/local/include/glib-2.0/glib/gtree.h \
 /usr/local/include/glib-2.0/glib/gurifuncs.h \
 /usr/local/include/glib-2.0/glib/guuid.h \
 /usr/local/include/glib-2.0/glib/gversion.h \
 /usr/local/include/glib-2.0/glib/deprecated/gallocator.h \
 /usr/local/include/glib-2.0/glib/deprecated/gcache.h \
 /usr/local/include/glib-2.0/glib/deprecated/gcompletion.h \
 /usr/local/include/glib-2.0/glib/deprecated/gmain.h \
 /usr/local/include/glib-2.0/glib/deprecated/grel.h \
 /usr/local/include/glib-2.0/glib/deprecated/gthread.h \
 /usr/local/include/glib-2.0/glib/glib-autocleanups.h \
 /usr/local/include/pango-1.0/pango/pango-version-macros.h \
 /usr/local/include/pango-1.0/pango/pango-features.h \
 /usr/local/include/pango-1.0/pango/pango-types.h \
 /usr/local/include/glib-2.0/glib-object.h \
 /usr/local/include/glib-2.0/gobject/gbinding.h \
 /usr/local/include/glib-2.0/gobject/gobject.h \
 /usr/local/include/glib-2.0/gobject/gtype.h \
 /usr/local/include/glib-2.0/gobject/gvalue.h \
 /usr/local/include/glib-2.0/gobject/gparam.h \
 /usr/local/include/glib-2.0/gobject/gclosure.h \
 /usr/local/include/glib-2.0/gobject/gsignal.h \
 /usr/local/include/glib-2.0/gobject/gmarshal.h \
 /usr/local/include/glib-2.0/gobject/gboxed.h \
 /usr/local/include/glib-2.0/gobject/glib-types.h \
 /usr/local/include/glib-2.0/gobject/genums.h \
 /usr/local/include/glib-2.0/gobject/gparamspecs.h \
 /usr/local/include/glib-2.0/gobject/gsourceclosure.h \
 /usr/local/include/glib-2.0/gobject/gtypemodule.h \
 /usr/local/include/glib-2.0/gobject/gtypeplugin.h \
 /usr/local/include/glib-2.0/gobject/gvaluearray.h \
 /usr/local/include/glib-2.0/gobject/gvaluetypes.h \
 /usr/local/include/glib-2.0/gobject/gobject-autocleanups.h \
 /usr/local/include/pango-1.0/pango/pango-gravity.h \
 /usr/local/include/pango-1.0/pango/pango-matrix.h \
 /usr/local/include/pango-1.0/pango/pango-script.h \
 /usr/local/include/pango-1.0/pango/pango-language.h \
 /usr/local/include/pango-1.0/pango/pango-bidi-type.h \
 /usr/local/include/pango-1.0/pango/pango-break.h \
 /usr/local/include/pango-1.0/pango/pango-item.h \
 /usr/local/include/pango-1.0/pango/pango-context.h \
 /usr/local/include/pango-1.0/pango/pango-fontmap.h \
 /usr/local/include/pango-1.0/pango/pango-fontset.h \
 /usr/local/include/pango-1.0/pango/pango-engine.h \
 /usr/local/include/pango-1.0/pango/pango-glyph.h \
 /usr/local/include/pango-1.0/pango/pango-enum-types.h \
 /usr/local/include/pango-1.0/pango/pango-glyph-item.h \
 /usr/local/include/pango-1.0/pango/pango-layout.h \
 /usr/local/include/pango-1.0/pango/pango-tabs.h \
 /usr/local/include/pango-1.0/pango/pango-renderer.h \
 /usr/local/include/pango-1.0/pango/pango-utils.h \
 /usr/local/include/libpng16/png.h \
 /usr/local/include/libpng16/pnglibconf.h \
 /usr/local/include/libpng16/pngconf.h ../src/backend/SvgBackend.h
../src/Backends.cc:
../src/Backends.h:
../src/backend/Backend.h:
/usr/local/include/cairo/cairo.h:
/usr/local/include/cairo/cairo-version.h:
/usr/local/include/cairo/cairo-features.h:
/usr/local/include/cairo/cairo-deprecated.h:
../src/backend/../dll_visibility.h:
../../node_modules/nan/nan.h:
/root/.node-gyp/10.16.0/include/node/node_version.h:
/root/.node-gyp/10.16.0/include/node/uv.h:
/root/.node-gyp/10.16.0/include/node/uv/errno.h:
/root/.node-gyp/10.16.0/include/node/uv/version.h:
/root/.node-gyp/10.16.0/include/node/uv/unix.h:
/root/.node-gyp/10.16.0/include/node/uv/threadpool.h:
/root/.node-gyp/10.16.0/include/node/uv/linux.h:
/root/.node-gyp/10.16.0/include/node/node.h:
/root/.node-gyp/10.16.0/include/node/v8.h:
/root/.node-gyp/10.16.0/include/node/v8-version.h:
/root/.node-gyp/10.16.0/include/node/v8config.h:
/root/.node-gyp/10.16.0/include/node/v8-platform.h:
/root/.node-gyp/10.16.0/include/node/node_version.h:
/root/.node-gyp/10.16.0/include/node/node_buffer.h:
/root/.node-gyp/10.16.0/include/node/node.h:
/root/.node-gyp/10.16.0/include/node/node_object_wrap.h:
../../node_modules/nan/nan_callbacks.h:
../../node_modules/nan/nan_callbacks_12_inl.h:
../../node_modules/nan/nan_maybe_43_inl.h:
../../node_modules/nan/nan_converters.h:
../../node_modules/nan/nan_converters_43_inl.h:
../../node_modules/nan/nan_new.h:
../../node_modules/nan/nan_implementation_12_inl.h:
../../node_modules/nan/nan_persistent_12_inl.h:
../../node_modules/nan/nan_weak.h:
../../node_modules/nan/nan_object_wrap.h:
../../node_modules/nan/nan_private.h:
../../node_modules/nan/nan_typedarray_contents.h:
../../node_modules/nan/nan_json.h:
/root/.node-gyp/10.16.0/include/node/v8.h:
../src/backend/ImageBackend.h:
../src/backend/PdfBackend.h:
../src/backend/../closure.h:
../src/backend/../Canvas.h:
../src/backend/../dll_visibility.h:
/usr/local/include/pango-1.0/pango/pangocairo.h:
/usr/local/include/pango-1.0/pango/pango.h:
/usr/local/include/pango-1.0/pango/pango-attributes.h:
/usr/local/include/pango-1.0/pango/pango-font.h:
/usr/local/include/pango-1.0/pango/pango-coverage.h:
/usr/local/include/glib-2.0/glib.h:
/usr/local/include/glib-2.0/glib/galloca.h:
/usr/local/include/glib-2.0/glib/gtypes.h:
/usr/local/lib/glib-2.0/include/glibconfig.h:
/usr/local/include/glib-2.0/glib/gmacros.h:
/usr/local/include/glib-2.0/glib/gversionmacros.h:
/usr/local/include/glib-2.0/glib/garray.h:
/usr/local/include/glib-2.0/glib/gasyncqueue.h:
/usr/local/include/glib-2.0/glib/gthread.h:
/usr/local/include/glib-2.0/glib/gatomic.h:
/usr/local/include/glib-2.0/glib/gerror.h:
/usr/local/include/glib-2.0/glib/gquark.h:
/usr/local/include/glib-2.0/glib/gutils.h:
/usr/local/include/glib-2.0/glib/gbacktrace.h:
/usr/local/include/glib-2.0/glib/gbase64.h:
/usr/local/include/glib-2.0/glib/gbitlock.h:
/usr/local/include/glib-2.0/glib/gbookmarkfile.h:
/usr/local/include/glib-2.0/glib/gbytes.h:
/usr/local/include/glib-2.0/glib/gcharset.h:
/usr/local/include/glib-2.0/glib/gchecksum.h:
/usr/local/include/glib-2.0/glib/gconvert.h:
/usr/local/include/glib-2.0/glib/gdataset.h:
/usr/local/include/glib-2.0/glib/gdate.h:
/usr/local/include/glib-2.0/glib/gdatetime.h:
/usr/local/include/glib-2.0/glib/gtimezone.h:
/usr/local/include/glib-2.0/glib/gdir.h:
/usr/local/include/glib-2.0/glib/genviron.h:
/usr/local/include/glib-2.0/glib/gfileutils.h:
/usr/local/include/glib-2.0/glib/ggettext.h:
/usr/local/include/glib-2.0/glib/ghash.h:
/usr/local/include/glib-2.0/glib/glist.h:
/usr/local/include/glib-2.0/glib/gmem.h:
/usr/local/include/glib-2.0/glib/gnode.h:
/usr/local/include/glib-2.0/glib/ghmac.h:
/usr/local/include/glib-2.0/glib/gchecksum.h:
/usr/local/include/glib-2.0/glib/ghook.h:
/usr/local/include/glib-2.0/glib/ghostutils.h:
/usr/local/include/glib-2.0/glib/giochannel.h:
/usr/local/include/glib-2.0/glib/gmain.h:
/usr/local/include/glib-2.0/glib/gpoll.h:
/usr/local/include/glib-2.0/glib/gslist.h:
/usr/local/include/glib-2.0/glib/gstring.h:
/usr/local/include/glib-2.0/glib/gunicode.h:
/usr/local/include/glib-2.0/glib/gkeyfile.h:
/usr/local/include/glib-2.0/glib/gmappedfile.h:
/usr/local/include/glib-2.0/glib/gmarkup.h:
/usr/local/include/glib-2.0/glib/gmessages.h:
/usr/local/include/glib-2.0/glib/gvariant.h:
/usr/local/include/glib-2.0/glib/gvarianttype.h:
/usr/local/include/glib-2.0/glib/goption.h:
/usr/local/include/glib-2.0/glib/gpattern.h:
/usr/local/include/glib-2.0/glib/gprimes.h:
/usr/local/include/glib-2.0/glib/gqsort.h:
/usr/local/include/glib-2.0/glib/gqueue.h:
/usr/local/include/glib-2.0/glib/grand.h:
/usr/local/include/glib-2.0/glib/gregex.h:
/usr/local/include/glib-2.0/glib/gscanner.h:
/usr/local/include/glib-2.0/glib/gsequence.h:
/usr/local/include/glib-2.0/glib/gshell.h:
/usr/local/include/glib-2.0/glib/gslice.h:
/usr/local/include/glib-2.0/glib/gspawn.h:
/usr/local/include/glib-2.0/glib/gstrfuncs.h:
/usr/local/include/glib-2.0/glib/gstringchunk.h:
/usr/local/include/glib-2.0/glib/gtestutils.h:
/usr/local/include/glib-2.0/glib/gthreadpool.h:
/usr/local/include/glib-2.0/glib/gtimer.h:
/usr/local/include/glib-2.0/glib/gtrashstack.h:
/usr/local/include/glib-2.0/glib/gtree.h:
/usr/local/include/glib-2.0/glib/gurifuncs.h:
/usr/local/include/glib-2.0/glib/guuid.h:
/usr/local/include/glib-2.0/glib/gversion.h:
/usr/local/include/glib-2.0/glib/deprecated/gallocator.h:
/usr/local/include/glib-2.0/glib/deprecated/gcache.h:
/usr/local/include/glib-2.0/glib/deprecated/gcompletion.h:
/usr/local/include/glib-2.0/glib/deprecated/gmain.h:
/usr/local/include/glib-2.0/glib/deprecated/grel.h:
/usr/local/include/glib-2.0/glib/deprecated/gthread.h:
/usr/local/include/glib-2.0/glib/glib-autocleanups.h:
/usr/local/include/pango-1.0/pango/pango-version-macros.h:
/usr/local/include/pango-1.0/pango/pango-features.h:
/usr/local/include/pango-1.0/pango/pango-types.h:
/usr/local/include/glib-2.0/glib-object.h:
/usr/local/include/glib-2.0/gobject/gbinding.h:
/usr/local/include/glib-2.0/gobject/gobject.h:
/usr/local/include/glib-2.0/gobject/gtype.h:
/usr/local/include/glib-2.0/gobject/gvalue.h:
/usr/local/include/glib-2.0/gobject/gparam.h:
/usr/local/include/glib-2.0/gobject/gclosure.h:
/usr/local/include/glib-2.0/gobject/gsignal.h:
/usr/local/include/glib-2.0/gobject/gmarshal.h:
/usr/local/include/glib-2.0/gobject/gboxed.h:
/usr/local/include/glib-2.0/gobject/glib-types.h:
/usr/local/include/glib-2.0/gobject/genums.h:
/usr/local/include/glib-2.0/gobject/gparamspecs.h:
/usr/local/include/glib-2.0/gobject/gsourceclosure.h:
/usr/local/include/glib-2.0/gobject/gtypemodule.h:
/usr/local/include/glib-2.0/gobject/gtypeplugin.h:
/usr/local/include/glib-2.0/gobject/gvaluearray.h:
/usr/local/include/glib-2.0/gobject/gvaluetypes.h:
/usr/local/include/glib-2.0/gobject/gobject-autocleanups.h:
/usr/local/include/pango-1.0/pango/pango-gravity.h:
/usr/local/include/pango-1.0/pango/pango-matrix.h:
/usr/local/include/pango-1.0/pango/pango-script.h:
/usr/local/include/pango-1.0/pango/pango-language.h:
/usr/local/include/pango-1.0/pango/pango-bidi-type.h:
/usr/local/include/pango-1.0/pango/pango-break.h:
/usr/local/include/pango-1.0/pango/pango-item.h:
/usr/local/include/pango-1.0/pango/pango-context.h:
/usr/local/include/pango-1.0/pango/pango-fontmap.h:
/usr/local/include/pango-1.0/pango/pango-fontset.h:
/usr/local/include/pango-1.0/pango/pango-engine.h:
/usr/local/include/pango-1.0/pango/pango-glyph.h:
/usr/local/include/pango-1.0/pango/pango-enum-types.h:
/usr/local/include/pango-1.0/pango/pango-glyph-item.h:
/usr/local/include/pango-1.0/pango/pango-layout.h:
/usr/local/include/pango-1.0/pango/pango-tabs.h:
/usr/local/include/pango-1.0/pango/pango-renderer.h:
/usr/local/include/pango-1.0/pango/pango-utils.h:
/usr/local/include/libpng16/png.h:
/usr/local/include/libpng16/pnglibconf.h:
/usr/local/include/libpng16/pngconf.h:
../src/backend/SvgBackend.h:
