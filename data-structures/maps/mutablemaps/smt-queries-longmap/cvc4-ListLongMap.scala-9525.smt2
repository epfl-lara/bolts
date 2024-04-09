; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113052 () Bool)

(assert start!113052)

(declare-fun b!1339424 () Bool)

(declare-fun res!888624 () Bool)

(declare-fun e!762955 () Bool)

(assert (=> b!1339424 (=> (not res!888624) (not e!762955))))

(declare-datatypes ((array!90953 0))(
  ( (array!90954 (arr!43928 (Array (_ BitVec 32) (_ BitVec 64))) (size!44479 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90953)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90953 (_ BitVec 32)) Bool)

(assert (=> b!1339424 (= res!888624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339425 () Bool)

(declare-fun res!888625 () Bool)

(assert (=> b!1339425 (=> (not res!888625) (not e!762955))))

(declare-datatypes ((List!31283 0))(
  ( (Nil!31280) (Cons!31279 (h!32488 (_ BitVec 64)) (t!45622 List!31283)) )
))
(declare-fun arrayNoDuplicates!0 (array!90953 (_ BitVec 32) List!31283) Bool)

(assert (=> b!1339425 (= res!888625 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31280))))

(declare-fun mapIsEmpty!57307 () Bool)

(declare-fun mapRes!57307 () Bool)

(assert (=> mapIsEmpty!57307 mapRes!57307))

(declare-fun b!1339426 () Bool)

(declare-fun e!762956 () Bool)

(declare-fun tp_is_empty!37067 () Bool)

(assert (=> b!1339426 (= e!762956 tp_is_empty!37067)))

(declare-fun res!888623 () Bool)

(assert (=> start!113052 (=> (not res!888623) (not e!762955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113052 (= res!888623 (validMask!0 mask!1977))))

(assert (=> start!113052 e!762955))

(assert (=> start!113052 true))

(declare-fun array_inv!33045 (array!90953) Bool)

(assert (=> start!113052 (array_inv!33045 _keys!1571)))

(declare-datatypes ((V!54525 0))(
  ( (V!54526 (val!18608 Int)) )
))
(declare-datatypes ((ValueCell!17635 0))(
  ( (ValueCellFull!17635 (v!21254 V!54525)) (EmptyCell!17635) )
))
(declare-datatypes ((array!90955 0))(
  ( (array!90956 (arr!43929 (Array (_ BitVec 32) ValueCell!17635)) (size!44480 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90955)

(declare-fun e!762953 () Bool)

(declare-fun array_inv!33046 (array!90955) Bool)

(assert (=> start!113052 (and (array_inv!33046 _values!1303) e!762953)))

(declare-fun b!1339427 () Bool)

(declare-fun res!888626 () Bool)

(assert (=> b!1339427 (=> (not res!888626) (not e!762955))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339427 (= res!888626 (and (= (size!44480 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44479 _keys!1571) (size!44480 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57307 () Bool)

(declare-fun tp!109007 () Bool)

(declare-fun e!762954 () Bool)

(assert (=> mapNonEmpty!57307 (= mapRes!57307 (and tp!109007 e!762954))))

(declare-fun mapValue!57307 () ValueCell!17635)

(declare-fun mapRest!57307 () (Array (_ BitVec 32) ValueCell!17635))

(declare-fun mapKey!57307 () (_ BitVec 32))

(assert (=> mapNonEmpty!57307 (= (arr!43929 _values!1303) (store mapRest!57307 mapKey!57307 mapValue!57307))))

(declare-fun b!1339428 () Bool)

(assert (=> b!1339428 (= e!762953 (and e!762956 mapRes!57307))))

(declare-fun condMapEmpty!57307 () Bool)

(declare-fun mapDefault!57307 () ValueCell!17635)

