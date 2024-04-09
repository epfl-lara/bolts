; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84204 () Bool)

(assert start!84204)

(declare-fun b_free!19877 () Bool)

(declare-fun b_next!19877 () Bool)

(assert (=> start!84204 (= b_free!19877 (not b_next!19877))))

(declare-fun tp!69236 () Bool)

(declare-fun b_and!31849 () Bool)

(assert (=> start!84204 (= tp!69236 b_and!31849)))

(declare-fun mapIsEmpty!36497 () Bool)

(declare-fun mapRes!36497 () Bool)

(assert (=> mapIsEmpty!36497 mapRes!36497))

(declare-fun b!984237 () Bool)

(declare-fun res!658709 () Bool)

(declare-fun e!554887 () Bool)

(assert (=> b!984237 (=> (not res!658709) (not e!554887))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984237 (= res!658709 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984238 () Bool)

(declare-fun res!658714 () Bool)

(assert (=> b!984238 (=> (not res!658714) (not e!554887))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61927 0))(
  ( (array!61928 (arr!29817 (Array (_ BitVec 32) (_ BitVec 64))) (size!30297 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61927)

(assert (=> b!984238 (= res!658714 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30297 _keys!1544))))))

(declare-fun b!984239 () Bool)

(declare-fun e!554888 () Bool)

(assert (=> b!984239 (= e!554888 (not true))))

(declare-datatypes ((V!35621 0))(
  ( (V!35622 (val!11540 Int)) )
))
(declare-datatypes ((tuple2!14860 0))(
  ( (tuple2!14861 (_1!7440 (_ BitVec 64)) (_2!7440 V!35621)) )
))
(declare-datatypes ((List!20781 0))(
  ( (Nil!20778) (Cons!20777 (h!21939 tuple2!14860) (t!29610 List!20781)) )
))
(declare-datatypes ((ListLongMap!13571 0))(
  ( (ListLongMap!13572 (toList!6801 List!20781)) )
))
(declare-fun lt!436740 () ListLongMap!13571)

(declare-fun lt!436738 () tuple2!14860)

(declare-fun lt!436741 () tuple2!14860)

(declare-fun +!2993 (ListLongMap!13571 tuple2!14860) ListLongMap!13571)

(assert (=> b!984239 (= (+!2993 (+!2993 lt!436740 lt!436738) lt!436741) (+!2993 (+!2993 lt!436740 lt!436741) lt!436738))))

(declare-fun lt!436739 () V!35621)

(assert (=> b!984239 (= lt!436741 (tuple2!14861 (select (arr!29817 _keys!1544) from!1932) lt!436739))))

(declare-fun minValue!1220 () V!35621)

(assert (=> b!984239 (= lt!436738 (tuple2!14861 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32661 0))(
  ( (Unit!32662) )
))
(declare-fun lt!436737 () Unit!32661)

(declare-fun addCommutativeForDiffKeys!655 (ListLongMap!13571 (_ BitVec 64) V!35621 (_ BitVec 64) V!35621) Unit!32661)

(assert (=> b!984239 (= lt!436737 (addCommutativeForDiffKeys!655 lt!436740 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29817 _keys!1544) from!1932) lt!436739))))

(declare-fun b!984240 () Bool)

(declare-fun res!658710 () Bool)

(assert (=> b!984240 (=> (not res!658710) (not e!554887))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11008 0))(
  ( (ValueCellFull!11008 (v!14102 V!35621)) (EmptyCell!11008) )
))
(declare-datatypes ((array!61929 0))(
  ( (array!61930 (arr!29818 (Array (_ BitVec 32) ValueCell!11008)) (size!30298 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61929)

(assert (=> b!984240 (= res!658710 (and (= (size!30298 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30297 _keys!1544) (size!30298 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984241 () Bool)

(declare-fun e!554885 () Bool)

(declare-fun e!554884 () Bool)

(assert (=> b!984241 (= e!554885 (and e!554884 mapRes!36497))))

(declare-fun condMapEmpty!36497 () Bool)

(declare-fun mapDefault!36497 () ValueCell!11008)

