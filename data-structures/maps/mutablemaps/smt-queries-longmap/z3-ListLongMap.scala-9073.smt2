; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109260 () Bool)

(assert start!109260)

(declare-fun b_free!28713 () Bool)

(declare-fun b_next!28713 () Bool)

(assert (=> start!109260 (= b_free!28713 (not b_next!28713))))

(declare-fun tp!101258 () Bool)

(declare-fun b_and!46813 () Bool)

(assert (=> start!109260 (= tp!101258 b_and!46813)))

(declare-fun b!1291987 () Bool)

(declare-fun res!858519 () Bool)

(declare-fun e!737497 () Bool)

(assert (=> b!1291987 (=> (not res!858519) (not e!737497))))

(declare-datatypes ((array!85699 0))(
  ( (array!85700 (arr!41346 (Array (_ BitVec 32) (_ BitVec 64))) (size!41897 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85699)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291987 (= res!858519 (not (validKeyInArray!0 (select (arr!41346 _keys!1741) from!2144))))))

(declare-fun b!1291988 () Bool)

(declare-fun e!737498 () Bool)

(declare-fun tp_is_empty!34353 () Bool)

(assert (=> b!1291988 (= e!737498 tp_is_empty!34353)))

(declare-fun b!1291989 () Bool)

(declare-fun res!858522 () Bool)

(assert (=> b!1291989 (=> (not res!858522) (not e!737497))))

(declare-datatypes ((List!29513 0))(
  ( (Nil!29510) (Cons!29509 (h!30718 (_ BitVec 64)) (t!43084 List!29513)) )
))
(declare-fun arrayNoDuplicates!0 (array!85699 (_ BitVec 32) List!29513) Bool)

(assert (=> b!1291989 (= res!858522 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29510))))

(declare-fun b!1291990 () Bool)

(declare-fun res!858520 () Bool)

(assert (=> b!1291990 (=> (not res!858520) (not e!737497))))

(assert (=> b!1291990 (= res!858520 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41897 _keys!1741))))))

(declare-fun res!858516 () Bool)

(assert (=> start!109260 (=> (not res!858516) (not e!737497))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109260 (= res!858516 (validMask!0 mask!2175))))

(assert (=> start!109260 e!737497))

(assert (=> start!109260 tp_is_empty!34353))

(assert (=> start!109260 true))

(declare-datatypes ((V!50907 0))(
  ( (V!50908 (val!17251 Int)) )
))
(declare-datatypes ((ValueCell!16278 0))(
  ( (ValueCellFull!16278 (v!19852 V!50907)) (EmptyCell!16278) )
))
(declare-datatypes ((array!85701 0))(
  ( (array!85702 (arr!41347 (Array (_ BitVec 32) ValueCell!16278)) (size!41898 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85701)

(declare-fun e!737500 () Bool)

(declare-fun array_inv!31299 (array!85701) Bool)

(assert (=> start!109260 (and (array_inv!31299 _values!1445) e!737500)))

(declare-fun array_inv!31300 (array!85699) Bool)

(assert (=> start!109260 (array_inv!31300 _keys!1741)))

(assert (=> start!109260 tp!101258))

(declare-fun b!1291991 () Bool)

(declare-fun res!858515 () Bool)

(assert (=> b!1291991 (=> (not res!858515) (not e!737497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85699 (_ BitVec 32)) Bool)

(assert (=> b!1291991 (= res!858515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291992 () Bool)

(declare-fun e!737499 () Bool)

(declare-fun mapRes!53090 () Bool)

(assert (=> b!1291992 (= e!737500 (and e!737499 mapRes!53090))))

(declare-fun condMapEmpty!53090 () Bool)

(declare-fun mapDefault!53090 () ValueCell!16278)

(assert (=> b!1291992 (= condMapEmpty!53090 (= (arr!41347 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16278)) mapDefault!53090)))))

(declare-fun b!1291993 () Bool)

(declare-fun res!858517 () Bool)

(assert (=> b!1291993 (=> (not res!858517) (not e!737497))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1291993 (= res!858517 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41897 _keys!1741))))))

(declare-fun b!1291994 () Bool)

(assert (=> b!1291994 (= e!737497 (not true))))

(declare-datatypes ((tuple2!22322 0))(
  ( (tuple2!22323 (_1!11171 (_ BitVec 64)) (_2!11171 V!50907)) )
))
(declare-datatypes ((List!29514 0))(
  ( (Nil!29511) (Cons!29510 (h!30719 tuple2!22322) (t!43085 List!29514)) )
))
(declare-datatypes ((ListLongMap!19991 0))(
  ( (ListLongMap!19992 (toList!10011 List!29514)) )
))
(declare-fun contains!8067 (ListLongMap!19991 (_ BitVec 64)) Bool)

(assert (=> b!1291994 (not (contains!8067 (ListLongMap!19992 Nil!29511) k0!1205))))

(declare-datatypes ((Unit!42709 0))(
  ( (Unit!42710) )
))
(declare-fun lt!579241 () Unit!42709)

(declare-fun emptyContainsNothing!111 ((_ BitVec 64)) Unit!42709)

(assert (=> b!1291994 (= lt!579241 (emptyContainsNothing!111 k0!1205))))

(declare-fun b!1291995 () Bool)

(declare-fun res!858518 () Bool)

(assert (=> b!1291995 (=> (not res!858518) (not e!737497))))

(declare-fun minValue!1387 () V!50907)

(declare-fun zeroValue!1387 () V!50907)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5004 (array!85699 array!85701 (_ BitVec 32) (_ BitVec 32) V!50907 V!50907 (_ BitVec 32) Int) ListLongMap!19991)

(assert (=> b!1291995 (= res!858518 (contains!8067 (getCurrentListMap!5004 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53090 () Bool)

(assert (=> mapIsEmpty!53090 mapRes!53090))

(declare-fun b!1291996 () Bool)

(assert (=> b!1291996 (= e!737499 tp_is_empty!34353)))

(declare-fun b!1291997 () Bool)

(declare-fun res!858521 () Bool)

(assert (=> b!1291997 (=> (not res!858521) (not e!737497))))

(assert (=> b!1291997 (= res!858521 (and (= (size!41898 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41897 _keys!1741) (size!41898 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53090 () Bool)

(declare-fun tp!101259 () Bool)

(assert (=> mapNonEmpty!53090 (= mapRes!53090 (and tp!101259 e!737498))))

(declare-fun mapValue!53090 () ValueCell!16278)

(declare-fun mapKey!53090 () (_ BitVec 32))

(declare-fun mapRest!53090 () (Array (_ BitVec 32) ValueCell!16278))

(assert (=> mapNonEmpty!53090 (= (arr!41347 _values!1445) (store mapRest!53090 mapKey!53090 mapValue!53090))))

(assert (= (and start!109260 res!858516) b!1291997))

(assert (= (and b!1291997 res!858521) b!1291991))

(assert (= (and b!1291991 res!858515) b!1291989))

(assert (= (and b!1291989 res!858522) b!1291990))

(assert (= (and b!1291990 res!858520) b!1291995))

(assert (= (and b!1291995 res!858518) b!1291993))

(assert (= (and b!1291993 res!858517) b!1291987))

(assert (= (and b!1291987 res!858519) b!1291994))

(assert (= (and b!1291992 condMapEmpty!53090) mapIsEmpty!53090))

(assert (= (and b!1291992 (not condMapEmpty!53090)) mapNonEmpty!53090))

(get-info :version)

(assert (= (and mapNonEmpty!53090 ((_ is ValueCellFull!16278) mapValue!53090)) b!1291988))

(assert (= (and b!1291992 ((_ is ValueCellFull!16278) mapDefault!53090)) b!1291996))

(assert (= start!109260 b!1291992))

(declare-fun m!1184681 () Bool)

(assert (=> b!1291989 m!1184681))

(declare-fun m!1184683 () Bool)

(assert (=> b!1291987 m!1184683))

(assert (=> b!1291987 m!1184683))

(declare-fun m!1184685 () Bool)

(assert (=> b!1291987 m!1184685))

(declare-fun m!1184687 () Bool)

(assert (=> b!1291991 m!1184687))

(declare-fun m!1184689 () Bool)

(assert (=> start!109260 m!1184689))

(declare-fun m!1184691 () Bool)

(assert (=> start!109260 m!1184691))

(declare-fun m!1184693 () Bool)

(assert (=> start!109260 m!1184693))

(declare-fun m!1184695 () Bool)

(assert (=> b!1291994 m!1184695))

(declare-fun m!1184697 () Bool)

(assert (=> b!1291994 m!1184697))

(declare-fun m!1184699 () Bool)

(assert (=> mapNonEmpty!53090 m!1184699))

(declare-fun m!1184701 () Bool)

(assert (=> b!1291995 m!1184701))

(assert (=> b!1291995 m!1184701))

(declare-fun m!1184703 () Bool)

(assert (=> b!1291995 m!1184703))

(check-sat tp_is_empty!34353 (not b!1291989) (not b!1291994) (not b!1291991) (not b_next!28713) (not b!1291987) b_and!46813 (not mapNonEmpty!53090) (not b!1291995) (not start!109260))
(check-sat b_and!46813 (not b_next!28713))
