; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40388 () Bool)

(assert start!40388)

(declare-fun b!443561 () Bool)

(declare-fun res!262974 () Bool)

(declare-fun e!260953 () Bool)

(assert (=> b!443561 (=> (not res!262974) (not e!260953))))

(declare-datatypes ((array!27309 0))(
  ( (array!27310 (arr!13099 (Array (_ BitVec 32) (_ BitVec 64))) (size!13451 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27309)

(declare-datatypes ((List!7828 0))(
  ( (Nil!7825) (Cons!7824 (h!8680 (_ BitVec 64)) (t!13594 List!7828)) )
))
(declare-fun arrayNoDuplicates!0 (array!27309 (_ BitVec 32) List!7828) Bool)

(assert (=> b!443561 (= res!262974 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7825))))

(declare-fun b!443562 () Bool)

(declare-fun res!262971 () Bool)

(assert (=> b!443562 (=> (not res!262971) (not e!260953))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27309 (_ BitVec 32)) Bool)

(assert (=> b!443562 (= res!262971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443563 () Bool)

(declare-fun e!260951 () Bool)

(declare-fun e!260955 () Bool)

(declare-fun mapRes!19275 () Bool)

(assert (=> b!443563 (= e!260951 (and e!260955 mapRes!19275))))

(declare-fun condMapEmpty!19275 () Bool)

(declare-datatypes ((V!16791 0))(
  ( (V!16792 (val!5927 Int)) )
))
(declare-datatypes ((ValueCell!5539 0))(
  ( (ValueCellFull!5539 (v!8174 V!16791)) (EmptyCell!5539) )
))
(declare-datatypes ((array!27311 0))(
  ( (array!27312 (arr!13100 (Array (_ BitVec 32) ValueCell!5539)) (size!13452 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27311)

(declare-fun mapDefault!19275 () ValueCell!5539)

