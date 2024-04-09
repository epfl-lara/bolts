; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35962 () Bool)

(assert start!35962)

(declare-fun b!361086 () Bool)

(declare-fun e!221114 () Bool)

(declare-datatypes ((List!5529 0))(
  ( (Nil!5526) (Cons!5525 (h!6381 (_ BitVec 64)) (t!10687 List!5529)) )
))
(declare-fun noDuplicate!181 (List!5529) Bool)

(assert (=> b!361086 (= e!221114 (not (noDuplicate!181 Nil!5526)))))

(declare-fun b!361087 () Bool)

(declare-fun res!200933 () Bool)

(assert (=> b!361087 (=> (not res!200933) (not e!221114))))

(declare-datatypes ((array!20261 0))(
  ( (array!20262 (arr!9617 (Array (_ BitVec 32) (_ BitVec 64))) (size!9969 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20261)

(assert (=> b!361087 (= res!200933 (and (bvsle #b00000000000000000000000000000000 (size!9969 _keys!1541)) (bvslt (size!9969 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun b!361089 () Bool)

(declare-fun res!200934 () Bool)

(assert (=> b!361089 (=> (not res!200934) (not e!221114))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12135 0))(
  ( (V!12136 (val!4229 Int)) )
))
(declare-datatypes ((ValueCell!3841 0))(
  ( (ValueCellFull!3841 (v!6419 V!12135)) (EmptyCell!3841) )
))
(declare-datatypes ((array!20263 0))(
  ( (array!20264 (arr!9618 (Array (_ BitVec 32) ValueCell!3841)) (size!9970 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20263)

(assert (=> b!361089 (= res!200934 (and (= (size!9970 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9969 _keys!1541) (size!9970 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!14073 () Bool)

(declare-fun mapRes!14073 () Bool)

(assert (=> mapIsEmpty!14073 mapRes!14073))

(declare-fun b!361090 () Bool)

(declare-fun e!221112 () Bool)

(declare-fun tp_is_empty!8369 () Bool)

(assert (=> b!361090 (= e!221112 tp_is_empty!8369)))

(declare-fun b!361088 () Bool)

(declare-fun res!200931 () Bool)

(assert (=> b!361088 (=> (not res!200931) (not e!221114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20261 (_ BitVec 32)) Bool)

(assert (=> b!361088 (= res!200931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun res!200932 () Bool)

(assert (=> start!35962 (=> (not res!200932) (not e!221114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35962 (= res!200932 (validMask!0 mask!1943))))

(assert (=> start!35962 e!221114))

(assert (=> start!35962 true))

(declare-fun e!221115 () Bool)

(declare-fun array_inv!7070 (array!20263) Bool)

(assert (=> start!35962 (and (array_inv!7070 _values!1277) e!221115)))

(declare-fun array_inv!7071 (array!20261) Bool)

(assert (=> start!35962 (array_inv!7071 _keys!1541)))

(declare-fun b!361091 () Bool)

(assert (=> b!361091 (= e!221115 (and e!221112 mapRes!14073))))

(declare-fun condMapEmpty!14073 () Bool)

(declare-fun mapDefault!14073 () ValueCell!3841)

