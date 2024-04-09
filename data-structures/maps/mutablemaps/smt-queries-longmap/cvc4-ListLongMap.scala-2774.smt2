; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40528 () Bool)

(assert start!40528)

(declare-fun b!446229 () Bool)

(declare-fun e!262170 () Bool)

(declare-fun tp_is_empty!11885 () Bool)

(assert (=> b!446229 (= e!262170 tp_is_empty!11885)))

(declare-fun b!446230 () Bool)

(declare-fun e!262169 () Bool)

(declare-fun e!262166 () Bool)

(assert (=> b!446230 (= e!262169 e!262166)))

(declare-fun res!264928 () Bool)

(assert (=> b!446230 (=> (not res!264928) (not e!262166))))

(declare-datatypes ((array!27537 0))(
  ( (array!27538 (arr!13212 (Array (_ BitVec 32) (_ BitVec 64))) (size!13564 (_ BitVec 32))) )
))
(declare-fun lt!203768 () array!27537)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27537 (_ BitVec 32)) Bool)

(assert (=> b!446230 (= res!264928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203768 mask!1025))))

(declare-fun _keys!709 () array!27537)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446230 (= lt!203768 (array!27538 (store (arr!13212 _keys!709) i!563 k!794) (size!13564 _keys!709)))))

(declare-fun b!446231 () Bool)

(declare-fun res!264926 () Bool)

(assert (=> b!446231 (=> (not res!264926) (not e!262169))))

(assert (=> b!446231 (= res!264926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446232 () Bool)

(declare-fun res!264930 () Bool)

(assert (=> b!446232 (=> (not res!264930) (not e!262169))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16951 0))(
  ( (V!16952 (val!5987 Int)) )
))
(declare-datatypes ((ValueCell!5599 0))(
  ( (ValueCellFull!5599 (v!8238 V!16951)) (EmptyCell!5599) )
))
(declare-datatypes ((array!27539 0))(
  ( (array!27540 (arr!13213 (Array (_ BitVec 32) ValueCell!5599)) (size!13565 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27539)

(assert (=> b!446232 (= res!264930 (and (= (size!13565 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13564 _keys!709) (size!13565 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446233 () Bool)

(declare-fun res!264933 () Bool)

(assert (=> b!446233 (=> (not res!264933) (not e!262169))))

(declare-fun arrayContainsKey!0 (array!27537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446233 (= res!264933 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!264931 () Bool)

(assert (=> start!40528 (=> (not res!264931) (not e!262169))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40528 (= res!264931 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13564 _keys!709))))))

(assert (=> start!40528 e!262169))

(assert (=> start!40528 true))

(declare-fun e!262167 () Bool)

(declare-fun array_inv!9570 (array!27539) Bool)

(assert (=> start!40528 (and (array_inv!9570 _values!549) e!262167)))

(declare-fun array_inv!9571 (array!27537) Bool)

(assert (=> start!40528 (array_inv!9571 _keys!709)))

(declare-fun b!446234 () Bool)

(assert (=> b!446234 (= e!262166 false)))

(declare-fun lt!203769 () Bool)

(declare-datatypes ((List!7888 0))(
  ( (Nil!7885) (Cons!7884 (h!8740 (_ BitVec 64)) (t!13656 List!7888)) )
))
(declare-fun arrayNoDuplicates!0 (array!27537 (_ BitVec 32) List!7888) Bool)

(assert (=> b!446234 (= lt!203769 (arrayNoDuplicates!0 lt!203768 #b00000000000000000000000000000000 Nil!7885))))

(declare-fun mapNonEmpty!19458 () Bool)

(declare-fun mapRes!19458 () Bool)

(declare-fun tp!37485 () Bool)

(assert (=> mapNonEmpty!19458 (= mapRes!19458 (and tp!37485 e!262170))))

(declare-fun mapKey!19458 () (_ BitVec 32))

(declare-fun mapRest!19458 () (Array (_ BitVec 32) ValueCell!5599))

(declare-fun mapValue!19458 () ValueCell!5599)

(assert (=> mapNonEmpty!19458 (= (arr!13213 _values!549) (store mapRest!19458 mapKey!19458 mapValue!19458))))

(declare-fun b!446235 () Bool)

(declare-fun e!262168 () Bool)

(assert (=> b!446235 (= e!262167 (and e!262168 mapRes!19458))))

(declare-fun condMapEmpty!19458 () Bool)

(declare-fun mapDefault!19458 () ValueCell!5599)

