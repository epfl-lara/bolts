; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71460 () Bool)

(assert start!71460)

(declare-fun b_free!13481 () Bool)

(declare-fun b_next!13481 () Bool)

(assert (=> start!71460 (= b_free!13481 (not b_next!13481))))

(declare-fun tp!47223 () Bool)

(declare-fun b_and!22505 () Bool)

(assert (=> start!71460 (= tp!47223 b_and!22505)))

(declare-fun b!829467 () Bool)

(declare-fun res!565156 () Bool)

(declare-fun e!462411 () Bool)

(assert (=> b!829467 (=> (not res!565156) (not e!462411))))

(declare-datatypes ((array!46524 0))(
  ( (array!46525 (arr!22296 (Array (_ BitVec 32) (_ BitVec 64))) (size!22717 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46524)

(declare-datatypes ((List!15993 0))(
  ( (Nil!15990) (Cons!15989 (h!17118 (_ BitVec 64)) (t!22362 List!15993)) )
))
(declare-fun arrayNoDuplicates!0 (array!46524 (_ BitVec 32) List!15993) Bool)

(assert (=> b!829467 (= res!565156 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15990))))

(declare-fun b!829468 () Bool)

(declare-fun res!565158 () Bool)

(assert (=> b!829468 (=> (not res!565158) (not e!462411))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46524 (_ BitVec 32)) Bool)

(assert (=> b!829468 (= res!565158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!24433 () Bool)

(declare-fun mapRes!24433 () Bool)

(declare-fun tp!47224 () Bool)

(declare-fun e!462410 () Bool)

(assert (=> mapNonEmpty!24433 (= mapRes!24433 (and tp!47224 e!462410))))

(declare-datatypes ((V!25255 0))(
  ( (V!25256 (val!7643 Int)) )
))
(declare-datatypes ((ValueCell!7180 0))(
  ( (ValueCellFull!7180 (v!10079 V!25255)) (EmptyCell!7180) )
))
(declare-fun mapRest!24433 () (Array (_ BitVec 32) ValueCell!7180))

(declare-datatypes ((array!46526 0))(
  ( (array!46527 (arr!22297 (Array (_ BitVec 32) ValueCell!7180)) (size!22718 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46526)

(declare-fun mapKey!24433 () (_ BitVec 32))

(declare-fun mapValue!24433 () ValueCell!7180)

(assert (=> mapNonEmpty!24433 (= (arr!22297 _values!788) (store mapRest!24433 mapKey!24433 mapValue!24433))))

(declare-fun b!829469 () Bool)

(declare-fun e!462408 () Bool)

(declare-fun e!462407 () Bool)

(assert (=> b!829469 (= e!462408 (and e!462407 mapRes!24433))))

(declare-fun condMapEmpty!24433 () Bool)

(declare-fun mapDefault!24433 () ValueCell!7180)

