; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20476 () Bool)

(assert start!20476)

(declare-fun b_free!5123 () Bool)

(declare-fun b_next!5123 () Bool)

(assert (=> start!20476 (= b_free!5123 (not b_next!5123))))

(declare-fun tp!18400 () Bool)

(declare-fun b_and!11887 () Bool)

(assert (=> start!20476 (= tp!18400 b_and!11887)))

(declare-fun b!202807 () Bool)

(declare-fun res!97309 () Bool)

(declare-fun e!132823 () Bool)

(assert (=> b!202807 (=> (not res!97309) (not e!132823))))

(declare-datatypes ((array!9182 0))(
  ( (array!9183 (arr!4341 (Array (_ BitVec 32) (_ BitVec 64))) (size!4666 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9182)

(declare-datatypes ((V!6285 0))(
  ( (V!6286 (val!2534 Int)) )
))
(declare-datatypes ((ValueCell!2146 0))(
  ( (ValueCellFull!2146 (v!4500 V!6285)) (EmptyCell!2146) )
))
(declare-datatypes ((array!9184 0))(
  ( (array!9185 (arr!4342 (Array (_ BitVec 32) ValueCell!2146)) (size!4667 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9184)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202807 (= res!97309 (and (= (size!4667 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4666 _keys!825) (size!4667 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8537 () Bool)

(declare-fun mapRes!8537 () Bool)

(assert (=> mapIsEmpty!8537 mapRes!8537))

(declare-fun res!97312 () Bool)

(assert (=> start!20476 (=> (not res!97312) (not e!132823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20476 (= res!97312 (validMask!0 mask!1149))))

(assert (=> start!20476 e!132823))

(declare-fun e!132824 () Bool)

(declare-fun array_inv!2855 (array!9184) Bool)

(assert (=> start!20476 (and (array_inv!2855 _values!649) e!132824)))

(assert (=> start!20476 true))

(declare-fun tp_is_empty!4979 () Bool)

(assert (=> start!20476 tp_is_empty!4979))

(declare-fun array_inv!2856 (array!9182) Bool)

(assert (=> start!20476 (array_inv!2856 _keys!825)))

(assert (=> start!20476 tp!18400))

(declare-fun b!202808 () Bool)

(declare-fun res!97313 () Bool)

(assert (=> b!202808 (=> (not res!97313) (not e!132823))))

(declare-datatypes ((List!2768 0))(
  ( (Nil!2765) (Cons!2764 (h!3406 (_ BitVec 64)) (t!7707 List!2768)) )
))
(declare-fun arrayNoDuplicates!0 (array!9182 (_ BitVec 32) List!2768) Bool)

(assert (=> b!202808 (= res!97313 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2765))))

(declare-fun b!202809 () Bool)

(declare-fun e!132820 () Bool)

(assert (=> b!202809 (= e!132824 (and e!132820 mapRes!8537))))

(declare-fun condMapEmpty!8537 () Bool)

(declare-fun mapDefault!8537 () ValueCell!2146)

