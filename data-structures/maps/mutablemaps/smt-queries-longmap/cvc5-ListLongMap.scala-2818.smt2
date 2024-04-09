; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40880 () Bool)

(assert start!40880)

(declare-fun b_free!10807 () Bool)

(declare-fun b_next!10807 () Bool)

(assert (=> start!40880 (= b_free!10807 (not b_next!10807))))

(declare-fun tp!38248 () Bool)

(declare-fun b_and!18967 () Bool)

(assert (=> start!40880 (= tp!38248 b_and!18967)))

(declare-fun b!453587 () Bool)

(declare-fun e!265513 () Bool)

(declare-fun tp_is_empty!12145 () Bool)

(assert (=> b!453587 (= e!265513 tp_is_empty!12145)))

(declare-fun mapIsEmpty!19858 () Bool)

(declare-fun mapRes!19858 () Bool)

(assert (=> mapIsEmpty!19858 mapRes!19858))

(declare-fun b!453588 () Bool)

(declare-fun res!270201 () Bool)

(declare-fun e!265509 () Bool)

(assert (=> b!453588 (=> (not res!270201) (not e!265509))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!453588 (= res!270201 (validMask!0 mask!1025))))

(declare-fun b!453589 () Bool)

(declare-fun res!270198 () Bool)

(assert (=> b!453589 (=> (not res!270198) (not e!265509))))

(declare-datatypes ((array!28059 0))(
  ( (array!28060 (arr!13470 (Array (_ BitVec 32) (_ BitVec 64))) (size!13822 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28059)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!453589 (= res!270198 (or (= (select (arr!13470 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13470 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!453590 () Bool)

(declare-fun e!265512 () Bool)

(assert (=> b!453590 (= e!265512 (and e!265513 mapRes!19858))))

(declare-fun condMapEmpty!19858 () Bool)

(declare-datatypes ((V!17299 0))(
  ( (V!17300 (val!6117 Int)) )
))
(declare-datatypes ((ValueCell!5729 0))(
  ( (ValueCellFull!5729 (v!8379 V!17299)) (EmptyCell!5729) )
))
(declare-datatypes ((array!28061 0))(
  ( (array!28062 (arr!13471 (Array (_ BitVec 32) ValueCell!5729)) (size!13823 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28061)

(declare-fun mapDefault!19858 () ValueCell!5729)

