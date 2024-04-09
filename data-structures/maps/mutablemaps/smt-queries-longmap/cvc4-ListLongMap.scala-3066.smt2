; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43260 () Bool)

(assert start!43260)

(declare-fun b_free!12119 () Bool)

(declare-fun b_next!12119 () Bool)

(assert (=> start!43260 (= b_free!12119 (not b_next!12119))))

(declare-fun tp!42628 () Bool)

(declare-fun b_and!20889 () Bool)

(assert (=> start!43260 (= tp!42628 b_and!20889)))

(declare-fun b!479021 () Bool)

(declare-fun res!285819 () Bool)

(declare-fun e!281800 () Bool)

(assert (=> b!479021 (=> (not res!285819) (not e!281800))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30903 0))(
  ( (array!30904 (arr!14855 (Array (_ BitVec 32) (_ BitVec 64))) (size!15213 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30903)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19245 0))(
  ( (V!19246 (val!6863 Int)) )
))
(declare-datatypes ((ValueCell!6454 0))(
  ( (ValueCellFull!6454 (v!9148 V!19245)) (EmptyCell!6454) )
))
(declare-datatypes ((array!30905 0))(
  ( (array!30906 (arr!14856 (Array (_ BitVec 32) ValueCell!6454)) (size!15214 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30905)

(assert (=> b!479021 (= res!285819 (and (= (size!15214 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15213 _keys!1874) (size!15214 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479022 () Bool)

(declare-fun res!285816 () Bool)

(assert (=> b!479022 (=> (not res!285816) (not e!281800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30903 (_ BitVec 32)) Bool)

(assert (=> b!479022 (= res!285816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479023 () Bool)

(declare-fun e!281801 () Bool)

(declare-fun tp_is_empty!13631 () Bool)

(assert (=> b!479023 (= e!281801 tp_is_empty!13631)))

(declare-fun b!479024 () Bool)

(declare-fun e!281802 () Bool)

(declare-fun e!281803 () Bool)

(declare-fun mapRes!22144 () Bool)

(assert (=> b!479024 (= e!281802 (and e!281803 mapRes!22144))))

(declare-fun condMapEmpty!22144 () Bool)

(declare-fun mapDefault!22144 () ValueCell!6454)

