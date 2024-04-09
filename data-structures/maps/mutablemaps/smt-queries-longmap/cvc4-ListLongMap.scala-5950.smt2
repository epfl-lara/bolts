; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77558 () Bool)

(assert start!77558)

(declare-fun b_free!16115 () Bool)

(declare-fun b_next!16115 () Bool)

(assert (=> start!77558 (= b_free!16115 (not b_next!16115))))

(declare-fun tp!56608 () Bool)

(declare-fun b_and!26499 () Bool)

(assert (=> start!77558 (= tp!56608 b_and!26499)))

(declare-fun b!903191 () Bool)

(declare-fun res!609501 () Bool)

(declare-fun e!506063 () Bool)

(assert (=> b!903191 (=> (not res!609501) (not e!506063))))

(declare-datatypes ((array!53108 0))(
  ( (array!53109 (arr!25509 (Array (_ BitVec 32) (_ BitVec 64))) (size!25969 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53108)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53108 (_ BitVec 32)) Bool)

(assert (=> b!903191 (= res!609501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903192 () Bool)

(declare-fun e!506061 () Bool)

(declare-fun e!506060 () Bool)

(declare-fun mapRes!29512 () Bool)

(assert (=> b!903192 (= e!506061 (and e!506060 mapRes!29512))))

(declare-fun condMapEmpty!29512 () Bool)

(declare-datatypes ((V!29675 0))(
  ( (V!29676 (val!9317 Int)) )
))
(declare-datatypes ((ValueCell!8785 0))(
  ( (ValueCellFull!8785 (v!11822 V!29675)) (EmptyCell!8785) )
))
(declare-datatypes ((array!53110 0))(
  ( (array!53111 (arr!25510 (Array (_ BitVec 32) ValueCell!8785)) (size!25970 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53110)

(declare-fun mapDefault!29512 () ValueCell!8785)

