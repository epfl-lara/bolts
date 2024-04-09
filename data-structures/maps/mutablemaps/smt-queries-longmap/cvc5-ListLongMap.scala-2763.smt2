; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40438 () Bool)

(assert start!40438)

(declare-fun b!444536 () Bool)

(declare-fun e!261403 () Bool)

(declare-fun e!261401 () Bool)

(assert (=> b!444536 (= e!261403 e!261401)))

(declare-fun res!263718 () Bool)

(assert (=> b!444536 (=> (not res!263718) (not e!261401))))

(declare-datatypes ((array!27401 0))(
  ( (array!27402 (arr!13145 (Array (_ BitVec 32) (_ BitVec 64))) (size!13497 (_ BitVec 32))) )
))
(declare-fun lt!203498 () array!27401)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27401 (_ BitVec 32)) Bool)

(assert (=> b!444536 (= res!263718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203498 mask!1025))))

(declare-fun _keys!709 () array!27401)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!444536 (= lt!203498 (array!27402 (store (arr!13145 _keys!709) i!563 k!794) (size!13497 _keys!709)))))

(declare-fun b!444537 () Bool)

(declare-fun e!261402 () Bool)

(declare-fun tp_is_empty!11815 () Bool)

(assert (=> b!444537 (= e!261402 tp_is_empty!11815)))

(declare-fun b!444538 () Bool)

(declare-fun e!261405 () Bool)

(declare-fun e!261400 () Bool)

(declare-fun mapRes!19350 () Bool)

(assert (=> b!444538 (= e!261405 (and e!261400 mapRes!19350))))

(declare-fun condMapEmpty!19350 () Bool)

(declare-datatypes ((V!16859 0))(
  ( (V!16860 (val!5952 Int)) )
))
(declare-datatypes ((ValueCell!5564 0))(
  ( (ValueCellFull!5564 (v!8199 V!16859)) (EmptyCell!5564) )
))
(declare-datatypes ((array!27403 0))(
  ( (array!27404 (arr!13146 (Array (_ BitVec 32) ValueCell!5564)) (size!13498 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27403)

(declare-fun mapDefault!19350 () ValueCell!5564)

