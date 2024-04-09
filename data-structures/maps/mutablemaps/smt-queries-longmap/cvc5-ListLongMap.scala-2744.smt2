; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40310 () Bool)

(assert start!40310)

(declare-fun res!262077 () Bool)

(declare-fun e!260359 () Bool)

(assert (=> start!40310 (=> (not res!262077) (not e!260359))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27187 0))(
  ( (array!27188 (arr!13039 (Array (_ BitVec 32) (_ BitVec 64))) (size!13391 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27187)

(assert (=> start!40310 (= res!262077 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13391 _keys!709))))))

(assert (=> start!40310 e!260359))

(assert (=> start!40310 true))

(declare-datatypes ((V!16707 0))(
  ( (V!16708 (val!5895 Int)) )
))
(declare-datatypes ((ValueCell!5507 0))(
  ( (ValueCellFull!5507 (v!8142 V!16707)) (EmptyCell!5507) )
))
(declare-datatypes ((array!27189 0))(
  ( (array!27190 (arr!13040 (Array (_ BitVec 32) ValueCell!5507)) (size!13392 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27189)

(declare-fun e!260362 () Bool)

(declare-fun array_inv!9454 (array!27189) Bool)

(assert (=> start!40310 (and (array_inv!9454 _values!549) e!260362)))

(declare-fun array_inv!9455 (array!27187) Bool)

(assert (=> start!40310 (array_inv!9455 _keys!709)))

(declare-fun b!442359 () Bool)

(declare-fun res!262078 () Bool)

(assert (=> b!442359 (=> (not res!262078) (not e!260359))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27187 (_ BitVec 32)) Bool)

(assert (=> b!442359 (= res!262078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19176 () Bool)

(declare-fun mapRes!19176 () Bool)

(assert (=> mapIsEmpty!19176 mapRes!19176))

(declare-fun b!442360 () Bool)

(declare-fun res!262079 () Bool)

(assert (=> b!442360 (=> (not res!262079) (not e!260359))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442360 (= res!262079 (and (= (size!13392 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13391 _keys!709) (size!13392 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442361 () Bool)

(declare-fun e!260360 () Bool)

(assert (=> b!442361 (= e!260362 (and e!260360 mapRes!19176))))

(declare-fun condMapEmpty!19176 () Bool)

(declare-fun mapDefault!19176 () ValueCell!5507)

