; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112834 () Bool)

(assert start!112834)

(declare-fun b_free!31051 () Bool)

(declare-fun b_next!31051 () Bool)

(assert (=> start!112834 (= b_free!31051 (not b_next!31051))))

(declare-fun tp!108801 () Bool)

(declare-fun b_and!50059 () Bool)

(assert (=> start!112834 (= tp!108801 b_and!50059)))

(declare-fun mapNonEmpty!57126 () Bool)

(declare-fun mapRes!57126 () Bool)

(declare-fun tp!108802 () Bool)

(declare-fun e!761730 () Bool)

(assert (=> mapNonEmpty!57126 (= mapRes!57126 (and tp!108802 e!761730))))

(declare-datatypes ((V!54385 0))(
  ( (V!54386 (val!18555 Int)) )
))
(declare-datatypes ((ValueCell!17582 0))(
  ( (ValueCellFull!17582 (v!21197 V!54385)) (EmptyCell!17582) )
))
(declare-datatypes ((array!90755 0))(
  ( (array!90756 (arr!43836 (Array (_ BitVec 32) ValueCell!17582)) (size!44387 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90755)

(declare-fun mapRest!57126 () (Array (_ BitVec 32) ValueCell!17582))

(declare-fun mapKey!57126 () (_ BitVec 32))

(declare-fun mapValue!57126 () ValueCell!17582)

(assert (=> mapNonEmpty!57126 (= (arr!43836 _values!1320) (store mapRest!57126 mapKey!57126 mapValue!57126))))

(declare-fun b!1337671 () Bool)

(declare-fun res!887718 () Bool)

(declare-fun e!761732 () Bool)

(assert (=> b!1337671 (=> (not res!887718) (not e!761732))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1337671 (= res!887718 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1337672 () Bool)

(declare-fun res!887712 () Bool)

(assert (=> b!1337672 (=> (not res!887712) (not e!761732))))

(declare-datatypes ((array!90757 0))(
  ( (array!90758 (arr!43837 (Array (_ BitVec 32) (_ BitVec 64))) (size!44388 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90757)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337672 (= res!887712 (validKeyInArray!0 (select (arr!43837 _keys!1590) from!1980)))))

(declare-fun b!1337673 () Bool)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1337673 (= e!761732 (= k!1153 (select (arr!43837 _keys!1590) from!1980)))))

(declare-fun res!887710 () Bool)

(assert (=> start!112834 (=> (not res!887710) (not e!761732))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112834 (= res!887710 (validMask!0 mask!1998))))

(assert (=> start!112834 e!761732))

(declare-fun e!761729 () Bool)

(declare-fun array_inv!32985 (array!90755) Bool)

(assert (=> start!112834 (and (array_inv!32985 _values!1320) e!761729)))

(assert (=> start!112834 true))

(declare-fun array_inv!32986 (array!90757) Bool)

(assert (=> start!112834 (array_inv!32986 _keys!1590)))

(assert (=> start!112834 tp!108801))

(declare-fun tp_is_empty!36961 () Bool)

(assert (=> start!112834 tp_is_empty!36961))

(declare-fun mapIsEmpty!57126 () Bool)

(assert (=> mapIsEmpty!57126 mapRes!57126))

(declare-fun b!1337674 () Bool)

(declare-fun e!761728 () Bool)

(assert (=> b!1337674 (= e!761728 tp_is_empty!36961)))

(declare-fun b!1337675 () Bool)

(declare-fun res!887715 () Bool)

(assert (=> b!1337675 (=> (not res!887715) (not e!761732))))

(assert (=> b!1337675 (= res!887715 (not (= (select (arr!43837 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1337676 () Bool)

(declare-fun res!887709 () Bool)

(assert (=> b!1337676 (=> (not res!887709) (not e!761732))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54385)

(declare-fun zeroValue!1262 () V!54385)

(declare-datatypes ((tuple2!24080 0))(
  ( (tuple2!24081 (_1!12050 (_ BitVec 64)) (_2!12050 V!54385)) )
))
(declare-datatypes ((List!31247 0))(
  ( (Nil!31244) (Cons!31243 (h!32452 tuple2!24080) (t!45574 List!31247)) )
))
(declare-datatypes ((ListLongMap!21749 0))(
  ( (ListLongMap!21750 (toList!10890 List!31247)) )
))
(declare-fun contains!8995 (ListLongMap!21749 (_ BitVec 64)) Bool)

(declare-fun +!4719 (ListLongMap!21749 tuple2!24080) ListLongMap!21749)

(declare-fun getCurrentListMapNoExtraKeys!6442 (array!90757 array!90755 (_ BitVec 32) (_ BitVec 32) V!54385 V!54385 (_ BitVec 32) Int) ListLongMap!21749)

(declare-fun get!22163 (ValueCell!17582 V!54385) V!54385)

(declare-fun dynLambda!3756 (Int (_ BitVec 64)) V!54385)

(assert (=> b!1337676 (= res!887709 (contains!8995 (+!4719 (getCurrentListMapNoExtraKeys!6442 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24081 (select (arr!43837 _keys!1590) from!1980) (get!22163 (select (arr!43836 _values!1320) from!1980) (dynLambda!3756 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153))))

(declare-fun b!1337677 () Bool)

(declare-fun res!887714 () Bool)

(assert (=> b!1337677 (=> (not res!887714) (not e!761732))))

(assert (=> b!1337677 (= res!887714 (and (= (size!44387 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44388 _keys!1590) (size!44387 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1337678 () Bool)

(declare-fun res!887713 () Bool)

(assert (=> b!1337678 (=> (not res!887713) (not e!761732))))

(assert (=> b!1337678 (= res!887713 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44388 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337679 () Bool)

(declare-fun res!887716 () Bool)

(assert (=> b!1337679 (=> (not res!887716) (not e!761732))))

(declare-fun getCurrentListMap!5795 (array!90757 array!90755 (_ BitVec 32) (_ BitVec 32) V!54385 V!54385 (_ BitVec 32) Int) ListLongMap!21749)

(assert (=> b!1337679 (= res!887716 (contains!8995 (getCurrentListMap!5795 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1337680 () Bool)

(assert (=> b!1337680 (= e!761730 tp_is_empty!36961)))

(declare-fun b!1337681 () Bool)

(declare-fun res!887711 () Bool)

(assert (=> b!1337681 (=> (not res!887711) (not e!761732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90757 (_ BitVec 32)) Bool)

(assert (=> b!1337681 (= res!887711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1337682 () Bool)

(declare-fun res!887717 () Bool)

(assert (=> b!1337682 (=> (not res!887717) (not e!761732))))

(declare-datatypes ((List!31248 0))(
  ( (Nil!31245) (Cons!31244 (h!32453 (_ BitVec 64)) (t!45575 List!31248)) )
))
(declare-fun arrayNoDuplicates!0 (array!90757 (_ BitVec 32) List!31248) Bool)

(assert (=> b!1337682 (= res!887717 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31245))))

(declare-fun b!1337683 () Bool)

(assert (=> b!1337683 (= e!761729 (and e!761728 mapRes!57126))))

(declare-fun condMapEmpty!57126 () Bool)

(declare-fun mapDefault!57126 () ValueCell!17582)

