; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84224 () Bool)

(assert start!84224)

(declare-fun b_free!19897 () Bool)

(declare-fun b_next!19897 () Bool)

(assert (=> start!84224 (= b_free!19897 (not b_next!19897))))

(declare-fun tp!69296 () Bool)

(declare-fun b_and!31889 () Bool)

(assert (=> start!84224 (= tp!69296 b_and!31889)))

(declare-fun mapIsEmpty!36527 () Bool)

(declare-fun mapRes!36527 () Bool)

(assert (=> mapIsEmpty!36527 mapRes!36527))

(declare-fun mapNonEmpty!36527 () Bool)

(declare-fun tp!69295 () Bool)

(declare-fun e!555065 () Bool)

(assert (=> mapNonEmpty!36527 (= mapRes!36527 (and tp!69295 e!555065))))

(declare-datatypes ((V!35649 0))(
  ( (V!35650 (val!11550 Int)) )
))
(declare-datatypes ((ValueCell!11018 0))(
  ( (ValueCellFull!11018 (v!14112 V!35649)) (EmptyCell!11018) )
))
(declare-fun mapValue!36527 () ValueCell!11018)

(declare-datatypes ((array!61965 0))(
  ( (array!61966 (arr!29836 (Array (_ BitVec 32) ValueCell!11018)) (size!30316 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61965)

(declare-fun mapRest!36527 () (Array (_ BitVec 32) ValueCell!11018))

(declare-fun mapKey!36527 () (_ BitVec 32))

(assert (=> mapNonEmpty!36527 (= (arr!29836 _values!1278) (store mapRest!36527 mapKey!36527 mapValue!36527))))

(declare-fun b!984587 () Bool)

(declare-fun res!658949 () Bool)

(declare-fun e!555064 () Bool)

(assert (=> b!984587 (=> (not res!658949) (not e!555064))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984587 (= res!658949 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984588 () Bool)

(declare-fun tp_is_empty!22999 () Bool)

(assert (=> b!984588 (= e!555065 tp_is_empty!22999)))

(declare-fun b!984589 () Bool)

(declare-fun e!555066 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61967 0))(
  ( (array!61968 (arr!29837 (Array (_ BitVec 32) (_ BitVec 64))) (size!30317 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61967)

(assert (=> b!984589 (= e!555066 (not (bvsle from!1932 (size!30317 _keys!1544))))))

(declare-datatypes ((tuple2!14874 0))(
  ( (tuple2!14875 (_1!7447 (_ BitVec 64)) (_2!7447 V!35649)) )
))
(declare-datatypes ((List!20793 0))(
  ( (Nil!20790) (Cons!20789 (h!21951 tuple2!14874) (t!29642 List!20793)) )
))
(declare-datatypes ((ListLongMap!13585 0))(
  ( (ListLongMap!13586 (toList!6808 List!20793)) )
))
(declare-fun lt!436889 () ListLongMap!13585)

(declare-fun lt!436891 () tuple2!14874)

(declare-fun lt!436888 () tuple2!14874)

(declare-fun +!2998 (ListLongMap!13585 tuple2!14874) ListLongMap!13585)

(assert (=> b!984589 (= (+!2998 (+!2998 lt!436889 lt!436891) lt!436888) (+!2998 (+!2998 lt!436889 lt!436888) lt!436891))))

(declare-fun lt!436890 () V!35649)

(assert (=> b!984589 (= lt!436888 (tuple2!14875 (select (arr!29837 _keys!1544) from!1932) lt!436890))))

(declare-fun minValue!1220 () V!35649)

(assert (=> b!984589 (= lt!436891 (tuple2!14875 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32671 0))(
  ( (Unit!32672) )
))
(declare-fun lt!436887 () Unit!32671)

(declare-fun addCommutativeForDiffKeys!660 (ListLongMap!13585 (_ BitVec 64) V!35649 (_ BitVec 64) V!35649) Unit!32671)

(assert (=> b!984589 (= lt!436887 (addCommutativeForDiffKeys!660 lt!436889 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29837 _keys!1544) from!1932) lt!436890))))

(declare-fun b!984591 () Bool)

(declare-fun res!658951 () Bool)

(assert (=> b!984591 (=> (not res!658951) (not e!555064))))

(assert (=> b!984591 (= res!658951 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30317 _keys!1544))))))

(declare-fun b!984592 () Bool)

(declare-fun res!658952 () Bool)

(assert (=> b!984592 (=> (not res!658952) (not e!555064))))

(declare-datatypes ((List!20794 0))(
  ( (Nil!20791) (Cons!20790 (h!21952 (_ BitVec 64)) (t!29643 List!20794)) )
))
(declare-fun arrayNoDuplicates!0 (array!61967 (_ BitVec 32) List!20794) Bool)

(assert (=> b!984592 (= res!658952 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20791))))

(declare-fun b!984593 () Bool)

(declare-fun res!658950 () Bool)

(assert (=> b!984593 (=> (not res!658950) (not e!555064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984593 (= res!658950 (validKeyInArray!0 (select (arr!29837 _keys!1544) from!1932)))))

(declare-fun b!984594 () Bool)

(declare-fun res!658955 () Bool)

(assert (=> b!984594 (=> (not res!658955) (not e!555064))))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!984594 (= res!658955 (and (= (size!30316 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30317 _keys!1544) (size!30316 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984595 () Bool)

(assert (=> b!984595 (= e!555064 e!555066)))

(declare-fun res!658954 () Bool)

(assert (=> b!984595 (=> (not res!658954) (not e!555066))))

(assert (=> b!984595 (= res!658954 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29837 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15501 (ValueCell!11018 V!35649) V!35649)

(declare-fun dynLambda!1834 (Int (_ BitVec 64)) V!35649)

(assert (=> b!984595 (= lt!436890 (get!15501 (select (arr!29836 _values!1278) from!1932) (dynLambda!1834 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35649)

(declare-fun getCurrentListMapNoExtraKeys!3463 (array!61967 array!61965 (_ BitVec 32) (_ BitVec 32) V!35649 V!35649 (_ BitVec 32) Int) ListLongMap!13585)

(assert (=> b!984595 (= lt!436889 (getCurrentListMapNoExtraKeys!3463 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984596 () Bool)

(declare-fun e!555063 () Bool)

(assert (=> b!984596 (= e!555063 tp_is_empty!22999)))

(declare-fun b!984597 () Bool)

(declare-fun res!658956 () Bool)

(assert (=> b!984597 (=> (not res!658956) (not e!555064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61967 (_ BitVec 32)) Bool)

(assert (=> b!984597 (= res!658956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984590 () Bool)

(declare-fun e!555068 () Bool)

(assert (=> b!984590 (= e!555068 (and e!555063 mapRes!36527))))

(declare-fun condMapEmpty!36527 () Bool)

(declare-fun mapDefault!36527 () ValueCell!11018)

