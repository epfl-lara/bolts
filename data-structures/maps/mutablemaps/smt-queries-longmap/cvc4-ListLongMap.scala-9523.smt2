; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113040 () Bool)

(assert start!113040)

(declare-fun b!1339308 () Bool)

(declare-fun res!888563 () Bool)

(declare-fun e!762866 () Bool)

(assert (=> b!1339308 (=> (not res!888563) (not e!762866))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90929 0))(
  ( (array!90930 (arr!43916 (Array (_ BitVec 32) (_ BitVec 64))) (size!44467 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90929)

(declare-datatypes ((V!54509 0))(
  ( (V!54510 (val!18602 Int)) )
))
(declare-datatypes ((ValueCell!17629 0))(
  ( (ValueCellFull!17629 (v!21248 V!54509)) (EmptyCell!17629) )
))
(declare-datatypes ((array!90931 0))(
  ( (array!90932 (arr!43917 (Array (_ BitVec 32) ValueCell!17629)) (size!44468 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90931)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339308 (= res!888563 (and (= (size!44468 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44467 _keys!1571) (size!44468 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57289 () Bool)

(declare-fun mapRes!57289 () Bool)

(declare-fun tp!108989 () Bool)

(declare-fun e!762863 () Bool)

(assert (=> mapNonEmpty!57289 (= mapRes!57289 (and tp!108989 e!762863))))

(declare-fun mapKey!57289 () (_ BitVec 32))

(declare-fun mapValue!57289 () ValueCell!17629)

(declare-fun mapRest!57289 () (Array (_ BitVec 32) ValueCell!17629))

(assert (=> mapNonEmpty!57289 (= (arr!43917 _values!1303) (store mapRest!57289 mapKey!57289 mapValue!57289))))

(declare-fun b!1339309 () Bool)

(assert (=> b!1339309 (= e!762866 false)))

(declare-fun lt!593818 () Bool)

(declare-datatypes ((List!31278 0))(
  ( (Nil!31275) (Cons!31274 (h!32483 (_ BitVec 64)) (t!45617 List!31278)) )
))
(declare-fun arrayNoDuplicates!0 (array!90929 (_ BitVec 32) List!31278) Bool)

(assert (=> b!1339309 (= lt!593818 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31275))))

(declare-fun mapIsEmpty!57289 () Bool)

(assert (=> mapIsEmpty!57289 mapRes!57289))

(declare-fun b!1339310 () Bool)

(declare-fun e!762864 () Bool)

(declare-fun e!762865 () Bool)

(assert (=> b!1339310 (= e!762864 (and e!762865 mapRes!57289))))

(declare-fun condMapEmpty!57289 () Bool)

(declare-fun mapDefault!57289 () ValueCell!17629)

