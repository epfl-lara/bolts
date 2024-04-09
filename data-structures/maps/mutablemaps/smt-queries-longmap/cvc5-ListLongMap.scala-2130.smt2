; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36026 () Bool)

(assert start!36026)

(declare-fun mapIsEmpty!14130 () Bool)

(declare-fun mapRes!14130 () Bool)

(assert (=> mapIsEmpty!14130 mapRes!14130))

(declare-fun b!361539 () Bool)

(declare-fun res!201197 () Bool)

(declare-fun e!221442 () Bool)

(assert (=> b!361539 (=> (not res!201197) (not e!221442))))

(declare-fun from!1924 () (_ BitVec 32))

(declare-datatypes ((array!20329 0))(
  ( (array!20330 (arr!9648 (Array (_ BitVec 32) (_ BitVec 64))) (size!10000 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20329)

(declare-fun k!1134 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!361539 (= res!201197 (arrayContainsKey!0 _keys!1541 k!1134 from!1924))))

(declare-fun res!201194 () Bool)

(assert (=> start!36026 (=> (not res!201194) (not e!221442))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36026 (= res!201194 (validMask!0 mask!1943))))

(assert (=> start!36026 e!221442))

(assert (=> start!36026 true))

(declare-fun array_inv!7096 (array!20329) Bool)

(assert (=> start!36026 (array_inv!7096 _keys!1541)))

(declare-datatypes ((V!12179 0))(
  ( (V!12180 (val!4245 Int)) )
))
(declare-datatypes ((ValueCell!3857 0))(
  ( (ValueCellFull!3857 (v!6436 V!12179)) (EmptyCell!3857) )
))
(declare-datatypes ((array!20331 0))(
  ( (array!20332 (arr!9649 (Array (_ BitVec 32) ValueCell!3857)) (size!10001 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20331)

(declare-fun e!221439 () Bool)

(declare-fun array_inv!7097 (array!20331) Bool)

(assert (=> start!36026 (and (array_inv!7097 _values!1277) e!221439)))

(declare-fun b!361540 () Bool)

(declare-fun e!221441 () Bool)

(declare-fun tp_is_empty!8401 () Bool)

(assert (=> b!361540 (= e!221441 tp_is_empty!8401)))

(declare-fun b!361541 () Bool)

(declare-fun res!201193 () Bool)

(assert (=> b!361541 (=> (not res!201193) (not e!221442))))

(declare-datatypes ((List!5541 0))(
  ( (Nil!5538) (Cons!5537 (h!6393 (_ BitVec 64)) (t!10699 List!5541)) )
))
(declare-fun arrayNoDuplicates!0 (array!20329 (_ BitVec 32) List!5541) Bool)

(assert (=> b!361541 (= res!201193 (arrayNoDuplicates!0 _keys!1541 #b00000000000000000000000000000000 Nil!5538))))

(declare-fun b!361542 () Bool)

(declare-fun e!221438 () Bool)

(assert (=> b!361542 (= e!221438 tp_is_empty!8401)))

(declare-fun b!361543 () Bool)

(assert (=> b!361543 (= e!221442 (and (not (= (select (arr!9648 _keys!1541) from!1924) k!1134)) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1924) (size!10000 _keys!1541))))))

(declare-fun b!361544 () Bool)

(declare-fun res!201196 () Bool)

(assert (=> b!361544 (=> (not res!201196) (not e!221442))))

(assert (=> b!361544 (= res!201196 (and (bvsge from!1924 #b00000000000000000000000000000000) (bvslt from!1924 (size!10000 _keys!1541))))))

(declare-fun b!361545 () Bool)

(declare-fun res!201195 () Bool)

(assert (=> b!361545 (=> (not res!201195) (not e!221442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20329 (_ BitVec 32)) Bool)

(assert (=> b!361545 (= res!201195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun mapNonEmpty!14130 () Bool)

(declare-fun tp!28206 () Bool)

(assert (=> mapNonEmpty!14130 (= mapRes!14130 (and tp!28206 e!221438))))

(declare-fun mapKey!14130 () (_ BitVec 32))

(declare-fun mapValue!14130 () ValueCell!3857)

(declare-fun mapRest!14130 () (Array (_ BitVec 32) ValueCell!3857))

(assert (=> mapNonEmpty!14130 (= (arr!9649 _values!1277) (store mapRest!14130 mapKey!14130 mapValue!14130))))

(declare-fun b!361546 () Bool)

(declare-fun res!201192 () Bool)

(assert (=> b!361546 (=> (not res!201192) (not e!221442))))

(declare-fun extraKeys!1198 () (_ BitVec 32))

(assert (=> b!361546 (= res!201192 (and (= (size!10001 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10000 _keys!1541) (size!10001 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361547 () Bool)

(assert (=> b!361547 (= e!221439 (and e!221441 mapRes!14130))))

(declare-fun condMapEmpty!14130 () Bool)

(declare-fun mapDefault!14130 () ValueCell!3857)

