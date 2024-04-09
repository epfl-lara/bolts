; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133624 () Bool)

(assert start!133624)

(declare-fun b_free!32009 () Bool)

(declare-fun b_next!32009 () Bool)

(assert (=> start!133624 (= b_free!32009 (not b_next!32009))))

(declare-fun tp!113151 () Bool)

(declare-fun b_and!51539 () Bool)

(assert (=> start!133624 (= tp!113151 b_and!51539)))

(declare-fun b!1561788 () Bool)

(declare-fun res!1067939 () Bool)

(declare-fun e!870353 () Bool)

(assert (=> b!1561788 (=> (not res!1067939) (not e!870353))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104021 0))(
  ( (array!104022 (arr!50198 (Array (_ BitVec 32) (_ BitVec 64))) (size!50749 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104021)

(assert (=> b!1561788 (= res!1067939 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50749 _keys!637)) (bvslt from!782 (size!50749 _keys!637))))))

(declare-fun b!1561789 () Bool)

(declare-fun e!870355 () Bool)

(declare-fun tp_is_empty!38675 () Bool)

(assert (=> b!1561789 (= e!870355 tp_is_empty!38675)))

(declare-fun mapNonEmpty!59388 () Bool)

(declare-fun mapRes!59388 () Bool)

(declare-fun tp!113152 () Bool)

(declare-fun e!870354 () Bool)

(assert (=> mapNonEmpty!59388 (= mapRes!59388 (and tp!113152 e!870354))))

(declare-datatypes ((V!59773 0))(
  ( (V!59774 (val!19421 Int)) )
))
(declare-datatypes ((ValueCell!18307 0))(
  ( (ValueCellFull!18307 (v!22170 V!59773)) (EmptyCell!18307) )
))
(declare-fun mapValue!59388 () ValueCell!18307)

(declare-datatypes ((array!104023 0))(
  ( (array!104024 (arr!50199 (Array (_ BitVec 32) ValueCell!18307)) (size!50750 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104023)

(declare-fun mapKey!59388 () (_ BitVec 32))

(declare-fun mapRest!59388 () (Array (_ BitVec 32) ValueCell!18307))

(assert (=> mapNonEmpty!59388 (= (arr!50199 _values!487) (store mapRest!59388 mapKey!59388 mapValue!59388))))

(declare-fun b!1561790 () Bool)

(declare-fun res!1067938 () Bool)

(assert (=> b!1561790 (=> (not res!1067938) (not e!870353))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104021 (_ BitVec 32)) Bool)

(assert (=> b!1561790 (= res!1067938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561791 () Bool)

(declare-fun res!1067935 () Bool)

(assert (=> b!1561791 (=> (not res!1067935) (not e!870353))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1561791 (= res!1067935 (and (= (size!50750 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50749 _keys!637) (size!50750 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561792 () Bool)

(assert (=> b!1561792 (= e!870354 tp_is_empty!38675)))

(declare-fun b!1561793 () Bool)

(declare-fun e!870356 () Bool)

(assert (=> b!1561793 (= e!870356 (and e!870355 mapRes!59388))))

(declare-fun condMapEmpty!59388 () Bool)

(declare-fun mapDefault!59388 () ValueCell!18307)

