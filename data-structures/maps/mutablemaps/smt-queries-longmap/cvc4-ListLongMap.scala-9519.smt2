; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113016 () Bool)

(assert start!113016)

(declare-fun mapIsEmpty!57253 () Bool)

(declare-fun mapRes!57253 () Bool)

(assert (=> mapIsEmpty!57253 mapRes!57253))

(declare-fun b!1339092 () Bool)

(declare-fun e!762686 () Bool)

(assert (=> b!1339092 (= e!762686 false)))

(declare-fun lt!593782 () Bool)

(declare-datatypes ((array!90887 0))(
  ( (array!90888 (arr!43895 (Array (_ BitVec 32) (_ BitVec 64))) (size!44446 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90887)

(declare-datatypes ((List!31271 0))(
  ( (Nil!31268) (Cons!31267 (h!32476 (_ BitVec 64)) (t!45610 List!31271)) )
))
(declare-fun arrayNoDuplicates!0 (array!90887 (_ BitVec 32) List!31271) Bool)

(assert (=> b!1339092 (= lt!593782 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31268))))

(declare-fun b!1339093 () Bool)

(declare-fun res!888453 () Bool)

(assert (=> b!1339093 (=> (not res!888453) (not e!762686))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54477 0))(
  ( (V!54478 (val!18590 Int)) )
))
(declare-datatypes ((ValueCell!17617 0))(
  ( (ValueCellFull!17617 (v!21236 V!54477)) (EmptyCell!17617) )
))
(declare-datatypes ((array!90889 0))(
  ( (array!90890 (arr!43896 (Array (_ BitVec 32) ValueCell!17617)) (size!44447 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90889)

(assert (=> b!1339093 (= res!888453 (and (= (size!44447 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44446 _keys!1571) (size!44447 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339094 () Bool)

(declare-fun e!762684 () Bool)

(declare-fun tp_is_empty!37031 () Bool)

(assert (=> b!1339094 (= e!762684 tp_is_empty!37031)))

(declare-fun b!1339095 () Bool)

(declare-fun e!762682 () Bool)

(assert (=> b!1339095 (= e!762682 (and e!762684 mapRes!57253))))

(declare-fun condMapEmpty!57253 () Bool)

(declare-fun mapDefault!57253 () ValueCell!17617)

