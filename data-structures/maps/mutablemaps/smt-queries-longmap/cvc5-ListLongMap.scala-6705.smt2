; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84230 () Bool)

(assert start!84230)

(declare-fun b_free!19903 () Bool)

(declare-fun b_next!19903 () Bool)

(assert (=> start!84230 (= b_free!19903 (not b_next!19903))))

(declare-fun tp!69314 () Bool)

(declare-fun b_and!31901 () Bool)

(assert (=> start!84230 (= tp!69314 b_and!31901)))

(declare-fun b!984692 () Bool)

(declare-fun e!555117 () Bool)

(assert (=> b!984692 (= e!555117 (not true))))

(declare-datatypes ((V!35657 0))(
  ( (V!35658 (val!11553 Int)) )
))
(declare-datatypes ((tuple2!14880 0))(
  ( (tuple2!14881 (_1!7450 (_ BitVec 64)) (_2!7450 V!35657)) )
))
(declare-datatypes ((List!20799 0))(
  ( (Nil!20796) (Cons!20795 (h!21957 tuple2!14880) (t!29654 List!20799)) )
))
(declare-datatypes ((ListLongMap!13591 0))(
  ( (ListLongMap!13592 (toList!6811 List!20799)) )
))
(declare-fun lt!436936 () ListLongMap!13591)

(declare-fun lt!436932 () tuple2!14880)

(declare-fun lt!436933 () tuple2!14880)

(declare-fun +!3001 (ListLongMap!13591 tuple2!14880) ListLongMap!13591)

(assert (=> b!984692 (= (+!3001 (+!3001 lt!436936 lt!436932) lt!436933) (+!3001 (+!3001 lt!436936 lt!436933) lt!436932))))

(declare-fun lt!436935 () V!35657)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61977 0))(
  ( (array!61978 (arr!29842 (Array (_ BitVec 32) (_ BitVec 64))) (size!30322 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61977)

(assert (=> b!984692 (= lt!436933 (tuple2!14881 (select (arr!29842 _keys!1544) from!1932) lt!436935))))

(declare-fun minValue!1220 () V!35657)

(assert (=> b!984692 (= lt!436932 (tuple2!14881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32677 0))(
  ( (Unit!32678) )
))
(declare-fun lt!436934 () Unit!32677)

(declare-fun addCommutativeForDiffKeys!663 (ListLongMap!13591 (_ BitVec 64) V!35657 (_ BitVec 64) V!35657) Unit!32677)

(assert (=> b!984692 (= lt!436934 (addCommutativeForDiffKeys!663 lt!436936 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29842 _keys!1544) from!1932) lt!436935))))

(declare-fun b!984693 () Bool)

(declare-fun res!659025 () Bool)

(declare-fun e!555120 () Bool)

(assert (=> b!984693 (=> (not res!659025) (not e!555120))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61977 (_ BitVec 32)) Bool)

(assert (=> b!984693 (= res!659025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!659026 () Bool)

(assert (=> start!84230 (=> (not res!659026) (not e!555120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84230 (= res!659026 (validMask!0 mask!1948))))

(assert (=> start!84230 e!555120))

(assert (=> start!84230 true))

(declare-fun tp_is_empty!23005 () Bool)

(assert (=> start!84230 tp_is_empty!23005))

(declare-datatypes ((ValueCell!11021 0))(
  ( (ValueCellFull!11021 (v!14115 V!35657)) (EmptyCell!11021) )
))
(declare-datatypes ((array!61979 0))(
  ( (array!61980 (arr!29843 (Array (_ BitVec 32) ValueCell!11021)) (size!30323 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61979)

(declare-fun e!555119 () Bool)

(declare-fun array_inv!22933 (array!61979) Bool)

(assert (=> start!84230 (and (array_inv!22933 _values!1278) e!555119)))

(assert (=> start!84230 tp!69314))

(declare-fun array_inv!22934 (array!61977) Bool)

(assert (=> start!84230 (array_inv!22934 _keys!1544)))

(declare-fun b!984694 () Bool)

(declare-fun e!555118 () Bool)

(assert (=> b!984694 (= e!555118 tp_is_empty!23005)))

(declare-fun mapIsEmpty!36536 () Bool)

(declare-fun mapRes!36536 () Bool)

(assert (=> mapIsEmpty!36536 mapRes!36536))

(declare-fun b!984695 () Bool)

(declare-fun res!659027 () Bool)

(assert (=> b!984695 (=> (not res!659027) (not e!555120))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984695 (= res!659027 (and (= (size!30323 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30322 _keys!1544) (size!30323 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36536 () Bool)

(declare-fun tp!69313 () Bool)

(assert (=> mapNonEmpty!36536 (= mapRes!36536 (and tp!69313 e!555118))))

(declare-fun mapValue!36536 () ValueCell!11021)

(declare-fun mapRest!36536 () (Array (_ BitVec 32) ValueCell!11021))

(declare-fun mapKey!36536 () (_ BitVec 32))

(assert (=> mapNonEmpty!36536 (= (arr!29843 _values!1278) (store mapRest!36536 mapKey!36536 mapValue!36536))))

(declare-fun b!984696 () Bool)

(declare-fun res!659028 () Bool)

(assert (=> b!984696 (=> (not res!659028) (not e!555120))))

(declare-datatypes ((List!20800 0))(
  ( (Nil!20797) (Cons!20796 (h!21958 (_ BitVec 64)) (t!29655 List!20800)) )
))
(declare-fun arrayNoDuplicates!0 (array!61977 (_ BitVec 32) List!20800) Bool)

(assert (=> b!984696 (= res!659028 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20797))))

(declare-fun b!984697 () Bool)

(declare-fun res!659022 () Bool)

(assert (=> b!984697 (=> (not res!659022) (not e!555120))))

(assert (=> b!984697 (= res!659022 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984698 () Bool)

(declare-fun res!659021 () Bool)

(assert (=> b!984698 (=> (not res!659021) (not e!555120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984698 (= res!659021 (validKeyInArray!0 (select (arr!29842 _keys!1544) from!1932)))))

(declare-fun b!984699 () Bool)

(declare-fun e!555121 () Bool)

(assert (=> b!984699 (= e!555121 tp_is_empty!23005)))

(declare-fun b!984700 () Bool)

(assert (=> b!984700 (= e!555120 e!555117)))

(declare-fun res!659024 () Bool)

(assert (=> b!984700 (=> (not res!659024) (not e!555117))))

(assert (=> b!984700 (= res!659024 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29842 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15506 (ValueCell!11021 V!35657) V!35657)

(declare-fun dynLambda!1837 (Int (_ BitVec 64)) V!35657)

(assert (=> b!984700 (= lt!436935 (get!15506 (select (arr!29843 _values!1278) from!1932) (dynLambda!1837 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35657)

(declare-fun getCurrentListMapNoExtraKeys!3466 (array!61977 array!61979 (_ BitVec 32) (_ BitVec 32) V!35657 V!35657 (_ BitVec 32) Int) ListLongMap!13591)

(assert (=> b!984700 (= lt!436936 (getCurrentListMapNoExtraKeys!3466 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984701 () Bool)

(assert (=> b!984701 (= e!555119 (and e!555121 mapRes!36536))))

(declare-fun condMapEmpty!36536 () Bool)

(declare-fun mapDefault!36536 () ValueCell!11021)

