; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40320 () Bool)

(assert start!40320)

(declare-fun b!442464 () Bool)

(declare-fun res!262139 () Bool)

(declare-fun e!260438 () Bool)

(assert (=> b!442464 (=> (not res!262139) (not e!260438))))

(declare-datatypes ((array!27205 0))(
  ( (array!27206 (arr!13048 (Array (_ BitVec 32) (_ BitVec 64))) (size!13400 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27205)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16719 0))(
  ( (V!16720 (val!5900 Int)) )
))
(declare-datatypes ((ValueCell!5512 0))(
  ( (ValueCellFull!5512 (v!8147 V!16719)) (EmptyCell!5512) )
))
(declare-datatypes ((array!27207 0))(
  ( (array!27208 (arr!13049 (Array (_ BitVec 32) ValueCell!5512)) (size!13401 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27207)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!442464 (= res!262139 (and (= (size!13401 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13400 _keys!709) (size!13401 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19191 () Bool)

(declare-fun mapRes!19191 () Bool)

(declare-fun tp!37173 () Bool)

(declare-fun e!260436 () Bool)

(assert (=> mapNonEmpty!19191 (= mapRes!19191 (and tp!37173 e!260436))))

(declare-fun mapValue!19191 () ValueCell!5512)

(declare-fun mapRest!19191 () (Array (_ BitVec 32) ValueCell!5512))

(declare-fun mapKey!19191 () (_ BitVec 32))

(assert (=> mapNonEmpty!19191 (= (arr!13049 _values!549) (store mapRest!19191 mapKey!19191 mapValue!19191))))

(declare-fun b!442465 () Bool)

(declare-fun tp_is_empty!11711 () Bool)

(assert (=> b!442465 (= e!260436 tp_is_empty!11711)))

(declare-fun b!442466 () Bool)

(declare-fun e!260434 () Bool)

(declare-fun e!260435 () Bool)

(assert (=> b!442466 (= e!260434 (and e!260435 mapRes!19191))))

(declare-fun condMapEmpty!19191 () Bool)

(declare-fun mapDefault!19191 () ValueCell!5512)

