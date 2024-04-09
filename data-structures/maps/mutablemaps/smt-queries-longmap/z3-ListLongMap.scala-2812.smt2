; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40792 () Bool)

(assert start!40792)

(declare-fun b_free!10773 () Bool)

(declare-fun b_next!10773 () Bool)

(assert (=> start!40792 (= b_free!10773 (not b_next!10773))))

(declare-fun tp!38141 () Bool)

(declare-fun b_and!18851 () Bool)

(assert (=> start!40792 (= tp!38141 b_and!18851)))

(declare-fun mapIsEmpty!19803 () Bool)

(declare-fun mapRes!19803 () Bool)

(assert (=> mapIsEmpty!19803 mapRes!19803))

(declare-fun b!451981 () Bool)

(declare-fun e!264684 () Bool)

(declare-fun tp_is_empty!12111 () Bool)

(assert (=> b!451981 (= e!264684 tp_is_empty!12111)))

(declare-fun b!451982 () Bool)

(declare-fun res!269259 () Bool)

(declare-fun e!264683 () Bool)

(assert (=> b!451982 (=> (not res!269259) (not e!264683))))

(declare-datatypes ((array!27991 0))(
  ( (array!27992 (arr!13437 (Array (_ BitVec 32) (_ BitVec 64))) (size!13789 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27991)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451982 (= res!269259 (or (= (select (arr!13437 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13437 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451983 () Bool)

(declare-fun e!264687 () Bool)

(declare-datatypes ((V!17253 0))(
  ( (V!17254 (val!6100 Int)) )
))
(declare-datatypes ((tuple2!7972 0))(
  ( (tuple2!7973 (_1!3996 (_ BitVec 64)) (_2!3996 V!17253)) )
))
(declare-datatypes ((List!8076 0))(
  ( (Nil!8073) (Cons!8072 (h!8928 tuple2!7972) (t!13880 List!8076)) )
))
(declare-datatypes ((ListLongMap!6899 0))(
  ( (ListLongMap!6900 (toList!3465 List!8076)) )
))
(declare-fun call!29930 () ListLongMap!6899)

(declare-fun call!29929 () ListLongMap!6899)

(assert (=> b!451983 (= e!264687 (= call!29930 call!29929))))

(declare-fun b!451984 () Bool)

(declare-fun res!269258 () Bool)

(assert (=> b!451984 (=> (not res!269258) (not e!264683))))

(declare-datatypes ((List!8077 0))(
  ( (Nil!8074) (Cons!8073 (h!8929 (_ BitVec 64)) (t!13881 List!8077)) )
))
(declare-fun arrayNoDuplicates!0 (array!27991 (_ BitVec 32) List!8077) Bool)

(assert (=> b!451984 (= res!269258 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8074))))

(declare-fun b!451985 () Bool)

(declare-fun e!264686 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5712 0))(
  ( (ValueCellFull!5712 (v!8355 V!17253)) (EmptyCell!5712) )
))
(declare-datatypes ((array!27993 0))(
  ( (array!27994 (arr!13438 (Array (_ BitVec 32) ValueCell!5712)) (size!13790 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27993)

(assert (=> b!451985 (= e!264686 (bvslt from!863 (size!13790 _values!549)))))

(declare-fun minValue!515 () V!17253)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!205077 () array!27991)

(declare-fun zeroValue!515 () V!17253)

(declare-fun lt!205078 () ListLongMap!6899)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!205076 () array!27993)

(declare-fun +!1531 (ListLongMap!6899 tuple2!7972) ListLongMap!6899)

(declare-fun getCurrentListMapNoExtraKeys!1642 (array!27991 array!27993 (_ BitVec 32) (_ BitVec 32) V!17253 V!17253 (_ BitVec 32) Int) ListLongMap!6899)

(declare-fun get!6630 (ValueCell!5712 V!17253) V!17253)

(declare-fun dynLambda!855 (Int (_ BitVec 64)) V!17253)

(assert (=> b!451985 (= lt!205078 (+!1531 (getCurrentListMapNoExtraKeys!1642 lt!205077 lt!205076 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7973 (select (arr!13437 lt!205077) from!863) (get!6630 (select (arr!13438 lt!205076) from!863) (dynLambda!855 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451986 () Bool)

(declare-fun e!264690 () Bool)

(assert (=> b!451986 (= e!264690 (and e!264684 mapRes!19803))))

(declare-fun condMapEmpty!19803 () Bool)

(declare-fun mapDefault!19803 () ValueCell!5712)

(assert (=> b!451986 (= condMapEmpty!19803 (= (arr!13438 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5712)) mapDefault!19803)))))

(declare-fun b!451987 () Bool)

(declare-fun res!269261 () Bool)

(declare-fun e!264682 () Bool)

(assert (=> b!451987 (=> (not res!269261) (not e!264682))))

(assert (=> b!451987 (= res!269261 (bvsle from!863 i!563))))

(declare-fun bm!29926 () Bool)

(declare-fun c!56033 () Bool)

(assert (=> bm!29926 (= call!29929 (getCurrentListMapNoExtraKeys!1642 (ite c!56033 lt!205077 _keys!709) (ite c!56033 lt!205076 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451989 () Bool)

(declare-fun res!269257 () Bool)

(assert (=> b!451989 (=> (not res!269257) (not e!264683))))

(assert (=> b!451989 (= res!269257 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13789 _keys!709))))))

(declare-fun b!451990 () Bool)

(declare-fun e!264688 () Bool)

(assert (=> b!451990 (= e!264688 (not e!264686))))

(declare-fun res!269251 () Bool)

(assert (=> b!451990 (=> res!269251 e!264686)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451990 (= res!269251 (validKeyInArray!0 (select (arr!13437 _keys!709) from!863)))))

(assert (=> b!451990 e!264687))

(assert (=> b!451990 (= c!56033 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!13167 0))(
  ( (Unit!13168) )
))
(declare-fun lt!205080 () Unit!13167)

(declare-fun v!412 () V!17253)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!702 (array!27991 array!27993 (_ BitVec 32) (_ BitVec 32) V!17253 V!17253 (_ BitVec 32) (_ BitVec 64) V!17253 (_ BitVec 32) Int) Unit!13167)

(assert (=> b!451990 (= lt!205080 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!702 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!19803 () Bool)

(declare-fun tp!38142 () Bool)

(declare-fun e!264685 () Bool)

(assert (=> mapNonEmpty!19803 (= mapRes!19803 (and tp!38142 e!264685))))

(declare-fun mapValue!19803 () ValueCell!5712)

(declare-fun mapKey!19803 () (_ BitVec 32))

(declare-fun mapRest!19803 () (Array (_ BitVec 32) ValueCell!5712))

(assert (=> mapNonEmpty!19803 (= (arr!13438 _values!549) (store mapRest!19803 mapKey!19803 mapValue!19803))))

(declare-fun b!451991 () Bool)

(assert (=> b!451991 (= e!264682 e!264688)))

(declare-fun res!269255 () Bool)

(assert (=> b!451991 (=> (not res!269255) (not e!264688))))

(assert (=> b!451991 (= res!269255 (= from!863 i!563))))

(assert (=> b!451991 (= lt!205078 (getCurrentListMapNoExtraKeys!1642 lt!205077 lt!205076 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451991 (= lt!205076 (array!27994 (store (arr!13438 _values!549) i!563 (ValueCellFull!5712 v!412)) (size!13790 _values!549)))))

(declare-fun lt!205079 () ListLongMap!6899)

(assert (=> b!451991 (= lt!205079 (getCurrentListMapNoExtraKeys!1642 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451992 () Bool)

(declare-fun res!269252 () Bool)

(assert (=> b!451992 (=> (not res!269252) (not e!264683))))

(declare-fun arrayContainsKey!0 (array!27991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451992 (= res!269252 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!451993 () Bool)

(assert (=> b!451993 (= e!264683 e!264682)))

(declare-fun res!269253 () Bool)

(assert (=> b!451993 (=> (not res!269253) (not e!264682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27991 (_ BitVec 32)) Bool)

(assert (=> b!451993 (= res!269253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205077 mask!1025))))

(assert (=> b!451993 (= lt!205077 (array!27992 (store (arr!13437 _keys!709) i!563 k0!794) (size!13789 _keys!709)))))

(declare-fun b!451994 () Bool)

(declare-fun res!269264 () Bool)

(assert (=> b!451994 (=> (not res!269264) (not e!264683))))

(assert (=> b!451994 (= res!269264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451995 () Bool)

(declare-fun res!269254 () Bool)

(assert (=> b!451995 (=> (not res!269254) (not e!264683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451995 (= res!269254 (validMask!0 mask!1025))))

(declare-fun b!451996 () Bool)

(assert (=> b!451996 (= e!264687 (= call!29929 (+!1531 call!29930 (tuple2!7973 k0!794 v!412))))))

(declare-fun b!451997 () Bool)

(declare-fun res!269262 () Bool)

(assert (=> b!451997 (=> (not res!269262) (not e!264682))))

(assert (=> b!451997 (= res!269262 (arrayNoDuplicates!0 lt!205077 #b00000000000000000000000000000000 Nil!8074))))

(declare-fun b!451998 () Bool)

(assert (=> b!451998 (= e!264685 tp_is_empty!12111)))

(declare-fun b!451999 () Bool)

(declare-fun res!269256 () Bool)

(assert (=> b!451999 (=> (not res!269256) (not e!264683))))

(assert (=> b!451999 (= res!269256 (validKeyInArray!0 k0!794))))

(declare-fun bm!29927 () Bool)

(assert (=> bm!29927 (= call!29930 (getCurrentListMapNoExtraKeys!1642 (ite c!56033 _keys!709 lt!205077) (ite c!56033 _values!549 lt!205076) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451988 () Bool)

(declare-fun res!269260 () Bool)

(assert (=> b!451988 (=> (not res!269260) (not e!264683))))

(assert (=> b!451988 (= res!269260 (and (= (size!13790 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13789 _keys!709) (size!13790 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!269263 () Bool)

(assert (=> start!40792 (=> (not res!269263) (not e!264683))))

(assert (=> start!40792 (= res!269263 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13789 _keys!709))))))

(assert (=> start!40792 e!264683))

(assert (=> start!40792 tp_is_empty!12111))

(assert (=> start!40792 tp!38141))

(assert (=> start!40792 true))

(declare-fun array_inv!9728 (array!27993) Bool)

(assert (=> start!40792 (and (array_inv!9728 _values!549) e!264690)))

(declare-fun array_inv!9729 (array!27991) Bool)

(assert (=> start!40792 (array_inv!9729 _keys!709)))

(assert (= (and start!40792 res!269263) b!451995))

(assert (= (and b!451995 res!269254) b!451988))

(assert (= (and b!451988 res!269260) b!451994))

(assert (= (and b!451994 res!269264) b!451984))

(assert (= (and b!451984 res!269258) b!451989))

(assert (= (and b!451989 res!269257) b!451999))

(assert (= (and b!451999 res!269256) b!451982))

(assert (= (and b!451982 res!269259) b!451992))

(assert (= (and b!451992 res!269252) b!451993))

(assert (= (and b!451993 res!269253) b!451997))

(assert (= (and b!451997 res!269262) b!451987))

(assert (= (and b!451987 res!269261) b!451991))

(assert (= (and b!451991 res!269255) b!451990))

(assert (= (and b!451990 c!56033) b!451996))

(assert (= (and b!451990 (not c!56033)) b!451983))

(assert (= (or b!451996 b!451983) bm!29926))

(assert (= (or b!451996 b!451983) bm!29927))

(assert (= (and b!451990 (not res!269251)) b!451985))

(assert (= (and b!451986 condMapEmpty!19803) mapIsEmpty!19803))

(assert (= (and b!451986 (not condMapEmpty!19803)) mapNonEmpty!19803))

(get-info :version)

(assert (= (and mapNonEmpty!19803 ((_ is ValueCellFull!5712) mapValue!19803)) b!451998))

(assert (= (and b!451986 ((_ is ValueCellFull!5712) mapDefault!19803)) b!451981))

(assert (= start!40792 b!451986))

(declare-fun b_lambda!9581 () Bool)

(assert (=> (not b_lambda!9581) (not b!451985)))

(declare-fun t!13879 () Bool)

(declare-fun tb!3761 () Bool)

(assert (=> (and start!40792 (= defaultEntry!557 defaultEntry!557) t!13879) tb!3761))

(declare-fun result!7051 () Bool)

(assert (=> tb!3761 (= result!7051 tp_is_empty!12111)))

(assert (=> b!451985 t!13879))

(declare-fun b_and!18853 () Bool)

(assert (= b_and!18851 (and (=> t!13879 result!7051) b_and!18853)))

(declare-fun m!435727 () Bool)

(assert (=> b!451995 m!435727))

(declare-fun m!435729 () Bool)

(assert (=> b!451992 m!435729))

(declare-fun m!435731 () Bool)

(assert (=> b!451984 m!435731))

(declare-fun m!435733 () Bool)

(assert (=> start!40792 m!435733))

(declare-fun m!435735 () Bool)

(assert (=> start!40792 m!435735))

(declare-fun m!435737 () Bool)

(assert (=> b!451991 m!435737))

(declare-fun m!435739 () Bool)

(assert (=> b!451991 m!435739))

(declare-fun m!435741 () Bool)

(assert (=> b!451991 m!435741))

(declare-fun m!435743 () Bool)

(assert (=> b!451993 m!435743))

(declare-fun m!435745 () Bool)

(assert (=> b!451993 m!435745))

(declare-fun m!435747 () Bool)

(assert (=> b!451996 m!435747))

(declare-fun m!435749 () Bool)

(assert (=> bm!29927 m!435749))

(declare-fun m!435751 () Bool)

(assert (=> b!451994 m!435751))

(declare-fun m!435753 () Bool)

(assert (=> b!451982 m!435753))

(declare-fun m!435755 () Bool)

(assert (=> b!451990 m!435755))

(assert (=> b!451990 m!435755))

(declare-fun m!435757 () Bool)

(assert (=> b!451990 m!435757))

(declare-fun m!435759 () Bool)

(assert (=> b!451990 m!435759))

(declare-fun m!435761 () Bool)

(assert (=> bm!29926 m!435761))

(declare-fun m!435763 () Bool)

(assert (=> mapNonEmpty!19803 m!435763))

(declare-fun m!435765 () Bool)

(assert (=> b!451997 m!435765))

(declare-fun m!435767 () Bool)

(assert (=> b!451999 m!435767))

(declare-fun m!435769 () Bool)

(assert (=> b!451985 m!435769))

(declare-fun m!435771 () Bool)

(assert (=> b!451985 m!435771))

(assert (=> b!451985 m!435769))

(declare-fun m!435773 () Bool)

(assert (=> b!451985 m!435773))

(declare-fun m!435775 () Bool)

(assert (=> b!451985 m!435775))

(declare-fun m!435777 () Bool)

(assert (=> b!451985 m!435777))

(assert (=> b!451985 m!435775))

(declare-fun m!435779 () Bool)

(assert (=> b!451985 m!435779))

(assert (=> b!451985 m!435771))

(check-sat (not b!451984) tp_is_empty!12111 (not b!451985) (not b!451991) (not b!451994) (not bm!29926) (not b!451992) (not b!451996) (not b!451993) (not b!451995) (not b!451999) (not mapNonEmpty!19803) (not bm!29927) (not b_next!10773) (not b_lambda!9581) b_and!18853 (not b!451990) (not start!40792) (not b!451997))
(check-sat b_and!18853 (not b_next!10773))
