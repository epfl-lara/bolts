; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100512 () Bool)

(assert start!100512)

(declare-fun b_free!25799 () Bool)

(declare-fun b_next!25799 () Bool)

(assert (=> start!100512 (= b_free!25799 (not b_next!25799))))

(declare-fun tp!90388 () Bool)

(declare-fun b_and!42499 () Bool)

(assert (=> start!100512 (= tp!90388 b_and!42499)))

(declare-fun b!1199916 () Bool)

(declare-fun res!798807 () Bool)

(declare-fun e!681507 () Bool)

(assert (=> b!1199916 (=> (not res!798807) (not e!681507))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77762 0))(
  ( (array!77763 (arr!37522 (Array (_ BitVec 32) (_ BitVec 64))) (size!38059 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77762)

(assert (=> b!1199916 (= res!798807 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38059 _keys!1208))))))

(declare-fun mapNonEmpty!47597 () Bool)

(declare-fun mapRes!47597 () Bool)

(declare-fun tp!90387 () Bool)

(declare-fun e!681505 () Bool)

(assert (=> mapNonEmpty!47597 (= mapRes!47597 (and tp!90387 e!681505))))

(declare-datatypes ((V!45797 0))(
  ( (V!45798 (val!15308 Int)) )
))
(declare-datatypes ((ValueCell!14542 0))(
  ( (ValueCellFull!14542 (v!17947 V!45797)) (EmptyCell!14542) )
))
(declare-fun mapValue!47597 () ValueCell!14542)

(declare-fun mapRest!47597 () (Array (_ BitVec 32) ValueCell!14542))

(declare-datatypes ((array!77764 0))(
  ( (array!77765 (arr!37523 (Array (_ BitVec 32) ValueCell!14542)) (size!38060 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77764)

(declare-fun mapKey!47597 () (_ BitVec 32))

(assert (=> mapNonEmpty!47597 (= (arr!37523 _values!996) (store mapRest!47597 mapKey!47597 mapValue!47597))))

(declare-fun mapIsEmpty!47597 () Bool)

(assert (=> mapIsEmpty!47597 mapRes!47597))

(declare-fun b!1199917 () Bool)

(declare-fun res!798812 () Bool)

(assert (=> b!1199917 (=> (not res!798812) (not e!681507))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77762 (_ BitVec 32)) Bool)

(assert (=> b!1199917 (= res!798812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199918 () Bool)

(declare-fun e!681508 () Bool)

(declare-fun e!681511 () Bool)

(assert (=> b!1199918 (= e!681508 (and e!681511 mapRes!47597))))

(declare-fun condMapEmpty!47597 () Bool)

(declare-fun mapDefault!47597 () ValueCell!14542)

