; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84408 () Bool)

(assert start!84408)

(declare-fun b_free!19967 () Bool)

(declare-fun b_next!19967 () Bool)

(assert (=> start!84408 (= b_free!19967 (not b_next!19967))))

(declare-fun tp!69677 () Bool)

(declare-fun b_and!32019 () Bool)

(assert (=> start!84408 (= tp!69677 b_and!32019)))

(declare-fun b!986865 () Bool)

(declare-fun res!660339 () Bool)

(declare-fun e!556535 () Bool)

(assert (=> b!986865 (=> (not res!660339) (not e!556535))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986865 (= res!660339 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!986866 () Bool)

(declare-fun res!660341 () Bool)

(assert (=> b!986866 (=> (not res!660341) (not e!556535))))

(declare-datatypes ((array!62313 0))(
  ( (array!62314 (arr!30010 (Array (_ BitVec 32) (_ BitVec 64))) (size!30490 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62313)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62313 (_ BitVec 32)) Bool)

(assert (=> b!986866 (= res!660341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986867 () Bool)

(declare-fun res!660344 () Bool)

(assert (=> b!986867 (=> (not res!660344) (not e!556535))))

(declare-datatypes ((V!35893 0))(
  ( (V!35894 (val!11642 Int)) )
))
(declare-datatypes ((ValueCell!11110 0))(
  ( (ValueCellFull!11110 (v!14204 V!35893)) (EmptyCell!11110) )
))
(declare-datatypes ((array!62315 0))(
  ( (array!62316 (arr!30011 (Array (_ BitVec 32) ValueCell!11110)) (size!30491 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62315)

(assert (=> b!986867 (= res!660344 (and (= (size!30491 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30490 _keys!1544) (size!30491 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36803 () Bool)

(declare-fun mapRes!36803 () Bool)

(assert (=> mapIsEmpty!36803 mapRes!36803))

(declare-fun b!986868 () Bool)

(declare-fun e!556531 () Bool)

(declare-fun tp_is_empty!23183 () Bool)

(assert (=> b!986868 (= e!556531 tp_is_empty!23183)))

(declare-fun b!986869 () Bool)

(declare-fun e!556532 () Bool)

(assert (=> b!986869 (= e!556532 tp_is_empty!23183)))

(declare-fun res!660342 () Bool)

(assert (=> start!84408 (=> (not res!660342) (not e!556535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84408 (= res!660342 (validMask!0 mask!1948))))

(assert (=> start!84408 e!556535))

(assert (=> start!84408 true))

(assert (=> start!84408 tp_is_empty!23183))

(declare-fun e!556533 () Bool)

(declare-fun array_inv!23049 (array!62315) Bool)

(assert (=> start!84408 (and (array_inv!23049 _values!1278) e!556533)))

(assert (=> start!84408 tp!69677))

(declare-fun array_inv!23050 (array!62313) Bool)

(assert (=> start!84408 (array_inv!23050 _keys!1544)))

(declare-fun b!986870 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!986870 (= e!556535 (bvsge from!1932 (size!30491 _values!1278)))))

(declare-datatypes ((tuple2!14928 0))(
  ( (tuple2!14929 (_1!7474 (_ BitVec 64)) (_2!7474 V!35893)) )
))
(declare-datatypes ((List!20877 0))(
  ( (Nil!20874) (Cons!20873 (h!22035 tuple2!14928) (t!29784 List!20877)) )
))
(declare-datatypes ((ListLongMap!13639 0))(
  ( (ListLongMap!13640 (toList!6835 List!20877)) )
))
(declare-fun lt!437515 () ListLongMap!13639)

(declare-fun minValue!1220 () V!35893)

(declare-fun zeroValue!1220 () V!35893)

(declare-fun defaultEntry!1281 () Int)

(declare-fun +!3023 (ListLongMap!13639 tuple2!14928) ListLongMap!13639)

(declare-fun getCurrentListMapNoExtraKeys!3488 (array!62313 array!62315 (_ BitVec 32) (_ BitVec 32) V!35893 V!35893 (_ BitVec 32) Int) ListLongMap!13639)

(assert (=> b!986870 (= lt!437515 (+!3023 (getCurrentListMapNoExtraKeys!3488 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14929 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986871 () Bool)

(declare-fun res!660343 () Bool)

(assert (=> b!986871 (=> (not res!660343) (not e!556535))))

(assert (=> b!986871 (= res!660343 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30490 _keys!1544))))))

(declare-fun b!986872 () Bool)

(declare-fun res!660340 () Bool)

(assert (=> b!986872 (=> (not res!660340) (not e!556535))))

(declare-datatypes ((List!20878 0))(
  ( (Nil!20875) (Cons!20874 (h!22036 (_ BitVec 64)) (t!29785 List!20878)) )
))
(declare-fun arrayNoDuplicates!0 (array!62313 (_ BitVec 32) List!20878) Bool)

(assert (=> b!986872 (= res!660340 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20875))))

(declare-fun b!986873 () Bool)

(declare-fun res!660345 () Bool)

(assert (=> b!986873 (=> (not res!660345) (not e!556535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986873 (= res!660345 (validKeyInArray!0 (select (arr!30010 _keys!1544) from!1932)))))

(declare-fun b!986874 () Bool)

(assert (=> b!986874 (= e!556533 (and e!556531 mapRes!36803))))

(declare-fun condMapEmpty!36803 () Bool)

(declare-fun mapDefault!36803 () ValueCell!11110)

