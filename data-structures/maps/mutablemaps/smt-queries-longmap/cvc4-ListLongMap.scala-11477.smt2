; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133696 () Bool)

(assert start!133696)

(declare-fun mapNonEmpty!59496 () Bool)

(declare-fun mapRes!59496 () Bool)

(declare-fun tp!113332 () Bool)

(declare-fun e!870894 () Bool)

(assert (=> mapNonEmpty!59496 (= mapRes!59496 (and tp!113332 e!870894))))

(declare-datatypes ((V!59869 0))(
  ( (V!59870 (val!19457 Int)) )
))
(declare-datatypes ((ValueCell!18343 0))(
  ( (ValueCellFull!18343 (v!22206 V!59869)) (EmptyCell!18343) )
))
(declare-fun mapValue!59496 () ValueCell!18343)

(declare-datatypes ((array!104157 0))(
  ( (array!104158 (arr!50266 (Array (_ BitVec 32) ValueCell!18343)) (size!50817 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104157)

(declare-fun mapKey!59496 () (_ BitVec 32))

(declare-fun mapRest!59496 () (Array (_ BitVec 32) ValueCell!18343))

(assert (=> mapNonEmpty!59496 (= (arr!50266 _values!487) (store mapRest!59496 mapKey!59496 mapValue!59496))))

(declare-fun b!1562705 () Bool)

(declare-fun res!1068477 () Bool)

(declare-fun e!870895 () Bool)

(assert (=> b!1562705 (=> (not res!1068477) (not e!870895))))

(declare-datatypes ((array!104159 0))(
  ( (array!104160 (arr!50267 (Array (_ BitVec 32) (_ BitVec 64))) (size!50818 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104159)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104159 (_ BitVec 32)) Bool)

(assert (=> b!1562705 (= res!1068477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562706 () Bool)

(declare-fun e!870896 () Bool)

(declare-fun tp_is_empty!38747 () Bool)

(assert (=> b!1562706 (= e!870896 tp_is_empty!38747)))

(declare-fun b!1562707 () Bool)

(declare-fun e!870893 () Bool)

(assert (=> b!1562707 (= e!870893 (and e!870896 mapRes!59496))))

(declare-fun condMapEmpty!59496 () Bool)

(declare-fun mapDefault!59496 () ValueCell!18343)

