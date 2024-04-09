; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!794 () Bool)

(assert start!794)

(declare-fun b_free!187 () Bool)

(declare-fun b_next!187 () Bool)

(assert (=> start!794 (= b_free!187 (not b_next!187))))

(declare-fun tp!790 () Bool)

(declare-fun b_and!333 () Bool)

(assert (=> start!794 (= tp!790 b_and!333)))

(declare-fun b!5832 () Bool)

(declare-fun e!3175 () Bool)

(declare-fun tp_is_empty!265 () Bool)

(assert (=> b!5832 (= e!3175 tp_is_empty!265)))

(declare-fun b!5833 () Bool)

(declare-fun e!3177 () Bool)

(declare-fun e!3174 () Bool)

(assert (=> b!5833 (= e!3177 (not e!3174))))

(declare-fun res!6457 () Bool)

(assert (=> b!5833 (=> res!6457 e!3174)))

(declare-datatypes ((array!465 0))(
  ( (array!466 (arr!221 (Array (_ BitVec 32) (_ BitVec 64))) (size!283 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!465)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5833 (= res!6457 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!3178 () Bool)

(assert (=> b!5833 e!3178))

(declare-fun c!413 () Bool)

(assert (=> b!5833 (= c!413 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((Unit!81 0))(
  ( (Unit!82) )
))
(declare-fun lt!1061 () Unit!81)

(declare-datatypes ((V!531 0))(
  ( (V!532 (val!138 Int)) )
))
(declare-datatypes ((ValueCell!116 0))(
  ( (ValueCellFull!116 (v!1229 V!531)) (EmptyCell!116) )
))
(declare-datatypes ((array!467 0))(
  ( (array!468 (arr!222 (Array (_ BitVec 32) ValueCell!116)) (size!284 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!467)

(declare-fun minValue!1434 () V!531)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!531)

(declare-fun lemmaKeyInListMapIsInArray!26 (array!465 array!467 (_ BitVec 32) (_ BitVec 32) V!531 V!531 (_ BitVec 64) Int) Unit!81)

(assert (=> b!5833 (= lt!1061 (lemmaKeyInListMapIsInArray!26 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!5834 () Bool)

(assert (=> b!5834 (= e!3174 true)))

(declare-fun lt!1062 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!465 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!5834 (= lt!1062 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5835 () Bool)

(declare-fun res!6454 () Bool)

(assert (=> b!5835 (=> (not res!6454) (not e!3177))))

(declare-datatypes ((List!141 0))(
  ( (Nil!138) (Cons!137 (h!703 (_ BitVec 64)) (t!2276 List!141)) )
))
(declare-fun arrayNoDuplicates!0 (array!465 (_ BitVec 32) List!141) Bool)

(assert (=> b!5835 (= res!6454 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!138))))

(declare-fun res!6459 () Bool)

(assert (=> start!794 (=> (not res!6459) (not e!3177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!794 (= res!6459 (validMask!0 mask!2250))))

(assert (=> start!794 e!3177))

(assert (=> start!794 tp!790))

(assert (=> start!794 true))

(declare-fun e!3179 () Bool)

(declare-fun array_inv!155 (array!467) Bool)

(assert (=> start!794 (and (array_inv!155 _values!1492) e!3179)))

(assert (=> start!794 tp_is_empty!265))

(declare-fun array_inv!156 (array!465) Bool)

(assert (=> start!794 (array_inv!156 _keys!1806)))

(declare-fun b!5836 () Bool)

(assert (=> b!5836 (= e!3178 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5837 () Bool)

(declare-fun res!6455 () Bool)

(assert (=> b!5837 (=> (not res!6455) (not e!3177))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5837 (= res!6455 (validKeyInArray!0 k!1278))))

(declare-fun mapIsEmpty!368 () Bool)

(declare-fun mapRes!368 () Bool)

(assert (=> mapIsEmpty!368 mapRes!368))

(declare-fun mapNonEmpty!368 () Bool)

(declare-fun tp!791 () Bool)

(assert (=> mapNonEmpty!368 (= mapRes!368 (and tp!791 e!3175))))

(declare-fun mapKey!368 () (_ BitVec 32))

(declare-fun mapValue!368 () ValueCell!116)

(declare-fun mapRest!368 () (Array (_ BitVec 32) ValueCell!116))

(assert (=> mapNonEmpty!368 (= (arr!222 _values!1492) (store mapRest!368 mapKey!368 mapValue!368))))

(declare-fun b!5838 () Bool)

(declare-fun e!3176 () Bool)

(assert (=> b!5838 (= e!3176 tp_is_empty!265)))

(declare-fun b!5839 () Bool)

(declare-fun res!6460 () Bool)

(assert (=> b!5839 (=> (not res!6460) (not e!3177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!465 (_ BitVec 32)) Bool)

(assert (=> b!5839 (= res!6460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5840 () Bool)

(declare-fun res!6456 () Bool)

(assert (=> b!5840 (=> (not res!6456) (not e!3177))))

(assert (=> b!5840 (= res!6456 (and (= (size!284 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!283 _keys!1806) (size!284 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5841 () Bool)

(assert (=> b!5841 (= e!3179 (and e!3176 mapRes!368))))

(declare-fun condMapEmpty!368 () Bool)

(declare-fun mapDefault!368 () ValueCell!116)

