; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35360 () Bool)

(assert start!35360)

(declare-fun mapIsEmpty!13230 () Bool)

(declare-fun mapRes!13230 () Bool)

(assert (=> mapIsEmpty!13230 mapRes!13230))

(declare-fun b!353822 () Bool)

(declare-fun res!196227 () Bool)

(declare-fun e!216788 () Bool)

(assert (=> b!353822 (=> (not res!196227) (not e!216788))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19191 0))(
  ( (array!19192 (arr!9087 (Array (_ BitVec 32) (_ BitVec 64))) (size!9439 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19191)

(declare-datatypes ((V!11399 0))(
  ( (V!11400 (val!3953 Int)) )
))
(declare-datatypes ((ValueCell!3565 0))(
  ( (ValueCellFull!3565 (v!6143 V!11399)) (EmptyCell!3565) )
))
(declare-datatypes ((array!19193 0))(
  ( (array!19194 (arr!9088 (Array (_ BitVec 32) ValueCell!3565)) (size!9440 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19193)

(assert (=> b!353822 (= res!196227 (and (= (size!9440 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9439 _keys!1456) (size!9440 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353823 () Bool)

(declare-fun e!216786 () Bool)

(declare-fun e!216785 () Bool)

(assert (=> b!353823 (= e!216786 (and e!216785 mapRes!13230))))

(declare-fun condMapEmpty!13230 () Bool)

(declare-fun mapDefault!13230 () ValueCell!3565)

