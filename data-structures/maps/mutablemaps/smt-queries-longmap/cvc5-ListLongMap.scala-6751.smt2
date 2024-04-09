; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84682 () Bool)

(assert start!84682)

(declare-fun b_free!20065 () Bool)

(declare-fun b_next!20065 () Bool)

(assert (=> start!84682 (= b_free!20065 (not b_next!20065))))

(declare-fun tp!69990 () Bool)

(declare-fun b_and!32219 () Bool)

(assert (=> start!84682 (= tp!69990 b_and!32219)))

(declare-fun b!989840 () Bool)

(declare-fun e!558184 () Bool)

(declare-fun tp_is_empty!23281 () Bool)

(assert (=> b!989840 (= e!558184 tp_is_empty!23281)))

(declare-fun b!989841 () Bool)

(declare-fun res!662011 () Bool)

(declare-fun e!558182 () Bool)

(assert (=> b!989841 (=> (not res!662011) (not e!558182))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989841 (= res!662011 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!662008 () Bool)

(assert (=> start!84682 (=> (not res!662008) (not e!558182))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84682 (= res!662008 (validMask!0 mask!1948))))

(assert (=> start!84682 e!558182))

(assert (=> start!84682 true))

(assert (=> start!84682 tp_is_empty!23281))

(declare-datatypes ((V!36025 0))(
  ( (V!36026 (val!11691 Int)) )
))
(declare-datatypes ((ValueCell!11159 0))(
  ( (ValueCellFull!11159 (v!14261 V!36025)) (EmptyCell!11159) )
))
(declare-datatypes ((array!62511 0))(
  ( (array!62512 (arr!30103 (Array (_ BitVec 32) ValueCell!11159)) (size!30583 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62511)

(declare-fun e!558183 () Bool)

(declare-fun array_inv!23113 (array!62511) Bool)

(assert (=> start!84682 (and (array_inv!23113 _values!1278) e!558183)))

(assert (=> start!84682 tp!69990))

(declare-datatypes ((array!62513 0))(
  ( (array!62514 (arr!30104 (Array (_ BitVec 32) (_ BitVec 64))) (size!30584 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62513)

(declare-fun array_inv!23114 (array!62513) Bool)

(assert (=> start!84682 (array_inv!23114 _keys!1544)))

(declare-fun b!989842 () Bool)

(declare-fun res!662012 () Bool)

(assert (=> b!989842 (=> (not res!662012) (not e!558182))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989842 (= res!662012 (validKeyInArray!0 (select (arr!30104 _keys!1544) from!1932)))))

(declare-fun b!989843 () Bool)

(declare-fun e!558185 () Bool)

(assert (=> b!989843 (= e!558185 tp_is_empty!23281)))

(declare-fun b!989844 () Bool)

(declare-fun res!662014 () Bool)

(assert (=> b!989844 (=> (not res!662014) (not e!558182))))

(assert (=> b!989844 (= res!662014 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30584 _keys!1544))))))

(declare-fun b!989845 () Bool)

(declare-fun e!558180 () Bool)

(assert (=> b!989845 (= e!558180 (not true))))

(declare-fun minValue!1220 () V!36025)

(declare-fun zeroValue!1220 () V!36025)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14996 0))(
  ( (tuple2!14997 (_1!7508 (_ BitVec 64)) (_2!7508 V!36025)) )
))
(declare-datatypes ((List!20947 0))(
  ( (Nil!20944) (Cons!20943 (h!22105 tuple2!14996) (t!29916 List!20947)) )
))
(declare-datatypes ((ListLongMap!13707 0))(
  ( (ListLongMap!13708 (toList!6869 List!20947)) )
))
(declare-fun lt!439112 () ListLongMap!13707)

(declare-fun getCurrentListMap!3878 (array!62513 array!62511 (_ BitVec 32) (_ BitVec 32) V!36025 V!36025 (_ BitVec 32) Int) ListLongMap!13707)

(assert (=> b!989845 (= lt!439112 (getCurrentListMap!3878 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!439113 () ListLongMap!13707)

(declare-fun lt!439110 () tuple2!14996)

(declare-fun lt!439115 () tuple2!14996)

(declare-fun +!3047 (ListLongMap!13707 tuple2!14996) ListLongMap!13707)

(assert (=> b!989845 (= (+!3047 (+!3047 lt!439113 lt!439110) lt!439115) (+!3047 (+!3047 lt!439113 lt!439115) lt!439110))))

(declare-fun lt!439111 () V!36025)

(assert (=> b!989845 (= lt!439115 (tuple2!14997 (select (arr!30104 _keys!1544) from!1932) lt!439111))))

(assert (=> b!989845 (= lt!439110 (tuple2!14997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32800 0))(
  ( (Unit!32801) )
))
(declare-fun lt!439114 () Unit!32800)

(declare-fun addCommutativeForDiffKeys!701 (ListLongMap!13707 (_ BitVec 64) V!36025 (_ BitVec 64) V!36025) Unit!32800)

(assert (=> b!989845 (= lt!439114 (addCommutativeForDiffKeys!701 lt!439113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30104 _keys!1544) from!1932) lt!439111))))

(declare-fun mapNonEmpty!36970 () Bool)

(declare-fun mapRes!36970 () Bool)

(declare-fun tp!69991 () Bool)

(assert (=> mapNonEmpty!36970 (= mapRes!36970 (and tp!69991 e!558185))))

(declare-fun mapValue!36970 () ValueCell!11159)

(declare-fun mapKey!36970 () (_ BitVec 32))

(declare-fun mapRest!36970 () (Array (_ BitVec 32) ValueCell!11159))

(assert (=> mapNonEmpty!36970 (= (arr!30103 _values!1278) (store mapRest!36970 mapKey!36970 mapValue!36970))))

(declare-fun b!989846 () Bool)

(assert (=> b!989846 (= e!558183 (and e!558184 mapRes!36970))))

(declare-fun condMapEmpty!36970 () Bool)

(declare-fun mapDefault!36970 () ValueCell!11159)

