; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111780 () Bool)

(assert start!111780)

(declare-fun b_free!30401 () Bool)

(declare-fun b_next!30401 () Bool)

(assert (=> start!111780 (= b_free!30401 (not b_next!30401))))

(declare-fun tp!106679 () Bool)

(declare-fun b_and!48949 () Bool)

(assert (=> start!111780 (= tp!106679 b_and!48949)))

(declare-fun b!1324007 () Bool)

(declare-fun res!878905 () Bool)

(declare-fun e!754818 () Bool)

(assert (=> b!1324007 (=> (not res!878905) (not e!754818))))

(declare-datatypes ((array!89311 0))(
  ( (array!89312 (arr!43125 (Array (_ BitVec 32) (_ BitVec 64))) (size!43676 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89311)

(declare-datatypes ((List!30767 0))(
  ( (Nil!30764) (Cons!30763 (h!31972 (_ BitVec 64)) (t!44700 List!30767)) )
))
(declare-fun arrayNoDuplicates!0 (array!89311 (_ BitVec 32) List!30767) Bool)

(assert (=> b!1324007 (= res!878905 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30764))))

(declare-fun res!878904 () Bool)

(assert (=> start!111780 (=> (not res!878904) (not e!754818))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111780 (= res!878904 (validMask!0 mask!2019))))

(assert (=> start!111780 e!754818))

(declare-fun array_inv!32505 (array!89311) Bool)

(assert (=> start!111780 (array_inv!32505 _keys!1609)))

(assert (=> start!111780 true))

(declare-fun tp_is_empty!36221 () Bool)

(assert (=> start!111780 tp_is_empty!36221))

(declare-datatypes ((V!53397 0))(
  ( (V!53398 (val!18185 Int)) )
))
(declare-datatypes ((ValueCell!17212 0))(
  ( (ValueCellFull!17212 (v!20813 V!53397)) (EmptyCell!17212) )
))
(declare-datatypes ((array!89313 0))(
  ( (array!89314 (arr!43126 (Array (_ BitVec 32) ValueCell!17212)) (size!43677 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89313)

(declare-fun e!754820 () Bool)

(declare-fun array_inv!32506 (array!89313) Bool)

(assert (=> start!111780 (and (array_inv!32506 _values!1337) e!754820)))

(assert (=> start!111780 tp!106679))

(declare-fun b!1324008 () Bool)

(declare-fun e!754822 () Bool)

(declare-fun mapRes!55979 () Bool)

(assert (=> b!1324008 (= e!754820 (and e!754822 mapRes!55979))))

(declare-fun condMapEmpty!55979 () Bool)

(declare-fun mapDefault!55979 () ValueCell!17212)

