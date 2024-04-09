; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84474 () Bool)

(assert start!84474)

(declare-fun b_free!19997 () Bool)

(declare-fun b_next!19997 () Bool)

(assert (=> start!84474 (= b_free!19997 (not b_next!19997))))

(declare-fun tp!69773 () Bool)

(declare-fun b_and!32079 () Bool)

(assert (=> start!84474 (= tp!69773 b_and!32079)))

(declare-fun b!987515 () Bool)

(declare-fun res!660737 () Bool)

(declare-fun e!556874 () Bool)

(assert (=> b!987515 (=> (not res!660737) (not e!556874))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62375 0))(
  ( (array!62376 (arr!30039 (Array (_ BitVec 32) (_ BitVec 64))) (size!30519 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62375)

(assert (=> b!987515 (= res!660737 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30519 _keys!1544))))))

(declare-fun b!987516 () Bool)

(declare-fun e!556875 () Bool)

(declare-fun tp_is_empty!23213 () Bool)

(assert (=> b!987516 (= e!556875 tp_is_empty!23213)))

(declare-fun b!987517 () Bool)

(declare-fun res!660743 () Bool)

(assert (=> b!987517 (=> (not res!660743) (not e!556874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987517 (= res!660743 (validKeyInArray!0 (select (arr!30039 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36854 () Bool)

(declare-fun mapRes!36854 () Bool)

(assert (=> mapIsEmpty!36854 mapRes!36854))

(declare-fun b!987518 () Bool)

(declare-fun res!660740 () Bool)

(assert (=> b!987518 (=> (not res!660740) (not e!556874))))

(declare-datatypes ((List!20900 0))(
  ( (Nil!20897) (Cons!20896 (h!22058 (_ BitVec 64)) (t!29833 List!20900)) )
))
(declare-fun arrayNoDuplicates!0 (array!62375 (_ BitVec 32) List!20900) Bool)

(assert (=> b!987518 (= res!660740 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20897))))

(declare-fun b!987519 () Bool)

(declare-fun e!556876 () Bool)

(assert (=> b!987519 (= e!556876 tp_is_empty!23213)))

(declare-fun b!987520 () Bool)

(declare-fun res!660742 () Bool)

(assert (=> b!987520 (=> (not res!660742) (not e!556874))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35933 0))(
  ( (V!35934 (val!11657 Int)) )
))
(declare-datatypes ((ValueCell!11125 0))(
  ( (ValueCellFull!11125 (v!14221 V!35933)) (EmptyCell!11125) )
))
(declare-datatypes ((array!62377 0))(
  ( (array!62378 (arr!30040 (Array (_ BitVec 32) ValueCell!11125)) (size!30520 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62377)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987520 (= res!660742 (and (= (size!30520 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30519 _keys!1544) (size!30520 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987521 () Bool)

(declare-fun res!660736 () Bool)

(assert (=> b!987521 (=> (not res!660736) (not e!556874))))

(assert (=> b!987521 (= res!660736 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987522 () Bool)

(declare-fun e!556878 () Bool)

(assert (=> b!987522 (= e!556878 true)))

(declare-fun minValue!1220 () V!35933)

(declare-fun zeroValue!1220 () V!35933)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14948 0))(
  ( (tuple2!14949 (_1!7484 (_ BitVec 64)) (_2!7484 V!35933)) )
))
(declare-datatypes ((List!20901 0))(
  ( (Nil!20898) (Cons!20897 (h!22059 tuple2!14948) (t!29834 List!20901)) )
))
(declare-datatypes ((ListLongMap!13659 0))(
  ( (ListLongMap!13660 (toList!6845 List!20901)) )
))
(declare-fun lt!437858 () ListLongMap!13659)

(declare-fun getCurrentListMap!3866 (array!62375 array!62377 (_ BitVec 32) (_ BitVec 32) V!35933 V!35933 (_ BitVec 32) Int) ListLongMap!13659)

(assert (=> b!987522 (= lt!437858 (getCurrentListMap!3866 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!437856 () tuple2!14948)

(declare-fun lt!437860 () ListLongMap!13659)

(declare-fun lt!437861 () ListLongMap!13659)

(declare-fun lt!437859 () tuple2!14948)

(declare-fun +!3033 (ListLongMap!13659 tuple2!14948) ListLongMap!13659)

(assert (=> b!987522 (= lt!437860 (+!3033 (+!3033 lt!437861 lt!437856) lt!437859))))

(declare-datatypes ((Unit!32731 0))(
  ( (Unit!32732) )
))
(declare-fun lt!437852 () Unit!32731)

(declare-fun lt!437851 () V!35933)

(declare-fun addCommutativeForDiffKeys!689 (ListLongMap!13659 (_ BitVec 64) V!35933 (_ BitVec 64) V!35933) Unit!32731)

(assert (=> b!987522 (= lt!437852 (addCommutativeForDiffKeys!689 lt!437861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30039 _keys!1544) from!1932) lt!437851))))

(declare-fun b!987523 () Bool)

(declare-fun e!556873 () Bool)

(assert (=> b!987523 (= e!556873 (and e!556875 mapRes!36854))))

(declare-fun condMapEmpty!36854 () Bool)

(declare-fun mapDefault!36854 () ValueCell!11125)

