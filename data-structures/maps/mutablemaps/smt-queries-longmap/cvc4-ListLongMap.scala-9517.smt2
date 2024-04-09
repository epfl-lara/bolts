; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113004 () Bool)

(assert start!113004)

(declare-fun b!1338984 () Bool)

(declare-fun res!888399 () Bool)

(declare-fun e!762596 () Bool)

(assert (=> b!1338984 (=> (not res!888399) (not e!762596))))

(declare-datatypes ((array!90869 0))(
  ( (array!90870 (arr!43886 (Array (_ BitVec 32) (_ BitVec 64))) (size!44437 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90869)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54461 0))(
  ( (V!54462 (val!18584 Int)) )
))
(declare-datatypes ((ValueCell!17611 0))(
  ( (ValueCellFull!17611 (v!21230 V!54461)) (EmptyCell!17611) )
))
(declare-datatypes ((array!90871 0))(
  ( (array!90872 (arr!43887 (Array (_ BitVec 32) ValueCell!17611)) (size!44438 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90871)

(declare-fun mask!1977 () (_ BitVec 32))

(assert (=> b!1338984 (= res!888399 (and (= (size!44438 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44437 _keys!1571) (size!44438 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338985 () Bool)

(declare-fun e!762593 () Bool)

(declare-fun tp_is_empty!37019 () Bool)

(assert (=> b!1338985 (= e!762593 tp_is_empty!37019)))

(declare-fun res!888401 () Bool)

(assert (=> start!113004 (=> (not res!888401) (not e!762596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113004 (= res!888401 (validMask!0 mask!1977))))

(assert (=> start!113004 e!762596))

(assert (=> start!113004 true))

(declare-fun e!762594 () Bool)

(declare-fun array_inv!33019 (array!90871) Bool)

(assert (=> start!113004 (and (array_inv!33019 _values!1303) e!762594)))

(declare-fun array_inv!33020 (array!90869) Bool)

(assert (=> start!113004 (array_inv!33020 _keys!1571)))

(declare-fun mapNonEmpty!57235 () Bool)

(declare-fun mapRes!57235 () Bool)

(declare-fun tp!108935 () Bool)

(declare-fun e!762592 () Bool)

(assert (=> mapNonEmpty!57235 (= mapRes!57235 (and tp!108935 e!762592))))

(declare-fun mapKey!57235 () (_ BitVec 32))

(declare-fun mapRest!57235 () (Array (_ BitVec 32) ValueCell!17611))

(declare-fun mapValue!57235 () ValueCell!17611)

(assert (=> mapNonEmpty!57235 (= (arr!43887 _values!1303) (store mapRest!57235 mapKey!57235 mapValue!57235))))

(declare-fun mapIsEmpty!57235 () Bool)

(assert (=> mapIsEmpty!57235 mapRes!57235))

(declare-fun b!1338986 () Bool)

(assert (=> b!1338986 (= e!762596 false)))

(declare-fun lt!593764 () Bool)

(declare-datatypes ((List!31268 0))(
  ( (Nil!31265) (Cons!31264 (h!32473 (_ BitVec 64)) (t!45607 List!31268)) )
))
(declare-fun arrayNoDuplicates!0 (array!90869 (_ BitVec 32) List!31268) Bool)

(assert (=> b!1338986 (= lt!593764 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31265))))

(declare-fun b!1338987 () Bool)

(assert (=> b!1338987 (= e!762594 (and e!762593 mapRes!57235))))

(declare-fun condMapEmpty!57235 () Bool)

(declare-fun mapDefault!57235 () ValueCell!17611)

