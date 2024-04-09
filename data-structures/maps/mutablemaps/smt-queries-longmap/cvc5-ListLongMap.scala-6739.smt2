; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84470 () Bool)

(assert start!84470)

(declare-fun b_free!19993 () Bool)

(declare-fun b_next!19993 () Bool)

(assert (=> start!84470 (= b_free!19993 (not b_next!19993))))

(declare-fun tp!69760 () Bool)

(declare-fun b_and!32071 () Bool)

(assert (=> start!84470 (= tp!69760 b_and!32071)))

(declare-fun b!987445 () Bool)

(declare-fun e!556837 () Bool)

(assert (=> b!987445 (= e!556837 true)))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35929 0))(
  ( (V!35930 (val!11655 Int)) )
))
(declare-fun minValue!1220 () V!35929)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35929)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62367 0))(
  ( (array!62368 (arr!30035 (Array (_ BitVec 32) (_ BitVec 64))) (size!30515 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62367)

(declare-datatypes ((ValueCell!11123 0))(
  ( (ValueCellFull!11123 (v!14219 V!35929)) (EmptyCell!11123) )
))
(declare-datatypes ((array!62369 0))(
  ( (array!62370 (arr!30036 (Array (_ BitVec 32) ValueCell!11123)) (size!30516 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62369)

(declare-datatypes ((tuple2!14944 0))(
  ( (tuple2!14945 (_1!7482 (_ BitVec 64)) (_2!7482 V!35929)) )
))
(declare-datatypes ((List!20896 0))(
  ( (Nil!20893) (Cons!20892 (h!22054 tuple2!14944) (t!29825 List!20896)) )
))
(declare-datatypes ((ListLongMap!13655 0))(
  ( (ListLongMap!13656 (toList!6843 List!20896)) )
))
(declare-fun lt!437793 () ListLongMap!13655)

(declare-fun getCurrentListMap!3864 (array!62367 array!62369 (_ BitVec 32) (_ BitVec 32) V!35929 V!35929 (_ BitVec 32) Int) ListLongMap!13655)

(assert (=> b!987445 (= lt!437793 (getCurrentListMap!3864 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun lt!437788 () tuple2!14944)

(declare-fun lt!437794 () tuple2!14944)

(declare-fun lt!437787 () ListLongMap!13655)

(declare-fun lt!437789 () ListLongMap!13655)

(declare-fun +!3031 (ListLongMap!13655 tuple2!14944) ListLongMap!13655)

(assert (=> b!987445 (= lt!437789 (+!3031 (+!3031 lt!437787 lt!437794) lt!437788))))

(declare-datatypes ((Unit!32727 0))(
  ( (Unit!32728) )
))
(declare-fun lt!437790 () Unit!32727)

(declare-fun lt!437792 () V!35929)

(declare-fun addCommutativeForDiffKeys!687 (ListLongMap!13655 (_ BitVec 64) V!35929 (_ BitVec 64) V!35929) Unit!32727)

(assert (=> b!987445 (= lt!437790 (addCommutativeForDiffKeys!687 lt!437787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30035 _keys!1544) from!1932) lt!437792))))

(declare-fun b!987446 () Bool)

(declare-fun res!660688 () Bool)

(declare-fun e!556841 () Bool)

(assert (=> b!987446 (=> (not res!660688) (not e!556841))))

(assert (=> b!987446 (= res!660688 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987447 () Bool)

(declare-fun e!556842 () Bool)

(declare-fun tp_is_empty!23209 () Bool)

(assert (=> b!987447 (= e!556842 tp_is_empty!23209)))

(declare-fun b!987448 () Bool)

(declare-fun res!660695 () Bool)

(assert (=> b!987448 (=> (not res!660695) (not e!556841))))

(declare-datatypes ((List!20897 0))(
  ( (Nil!20894) (Cons!20893 (h!22055 (_ BitVec 64)) (t!29826 List!20897)) )
))
(declare-fun arrayNoDuplicates!0 (array!62367 (_ BitVec 32) List!20897) Bool)

(assert (=> b!987448 (= res!660695 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20894))))

(declare-fun b!987449 () Bool)

(declare-fun res!660693 () Bool)

(assert (=> b!987449 (=> (not res!660693) (not e!556841))))

(assert (=> b!987449 (= res!660693 (and (= (size!30516 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30515 _keys!1544) (size!30516 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987450 () Bool)

(declare-fun e!556839 () Bool)

(declare-fun mapRes!36848 () Bool)

(assert (=> b!987450 (= e!556839 (and e!556842 mapRes!36848))))

(declare-fun condMapEmpty!36848 () Bool)

(declare-fun mapDefault!36848 () ValueCell!11123)

