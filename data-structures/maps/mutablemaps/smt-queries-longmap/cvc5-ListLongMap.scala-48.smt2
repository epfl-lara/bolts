; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!800 () Bool)

(assert start!800)

(declare-fun b_free!193 () Bool)

(declare-fun b_next!193 () Bool)

(assert (=> start!800 (= b_free!193 (not b_next!193))))

(declare-fun tp!808 () Bool)

(declare-fun b_and!339 () Bool)

(assert (=> start!800 (= tp!808 b_and!339)))

(declare-fun b!5940 () Bool)

(declare-fun res!6520 () Bool)

(declare-fun e!3238 () Bool)

(assert (=> b!5940 (=> (not res!6520) (not e!3238))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5940 (= res!6520 (validKeyInArray!0 k!1278))))

(declare-fun b!5941 () Bool)

(declare-fun res!6522 () Bool)

(assert (=> b!5941 (=> (not res!6522) (not e!3238))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!539 0))(
  ( (V!540 (val!141 Int)) )
))
(declare-datatypes ((ValueCell!119 0))(
  ( (ValueCellFull!119 (v!1232 V!539)) (EmptyCell!119) )
))
(declare-datatypes ((array!477 0))(
  ( (array!478 (arr!227 (Array (_ BitVec 32) ValueCell!119)) (size!289 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!477)

(declare-fun minValue!1434 () V!539)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!539)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!479 0))(
  ( (array!480 (arr!228 (Array (_ BitVec 32) (_ BitVec 64))) (size!290 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!479)

(declare-datatypes ((tuple2!134 0))(
  ( (tuple2!135 (_1!67 (_ BitVec 64)) (_2!67 V!539)) )
))
(declare-datatypes ((List!145 0))(
  ( (Nil!142) (Cons!141 (h!707 tuple2!134) (t!2280 List!145)) )
))
(declare-datatypes ((ListLongMap!139 0))(
  ( (ListLongMap!140 (toList!85 List!145)) )
))
(declare-fun contains!59 (ListLongMap!139 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!44 (array!479 array!477 (_ BitVec 32) (_ BitVec 32) V!539 V!539 (_ BitVec 32) Int) ListLongMap!139)

(assert (=> b!5941 (= res!6522 (contains!59 (getCurrentListMap!44 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!5942 () Bool)

(declare-fun e!3236 () Bool)

(assert (=> b!5942 (= e!3236 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5944 () Bool)

(declare-fun res!6518 () Bool)

(assert (=> b!5944 (=> (not res!6518) (not e!3238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!479 (_ BitVec 32)) Bool)

(assert (=> b!5944 (= res!6518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5945 () Bool)

(declare-fun e!3241 () Bool)

(assert (=> b!5945 (= e!3241 true)))

(declare-fun lt!1079 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!479 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!5945 (= lt!1079 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5946 () Bool)

(declare-fun res!6517 () Bool)

(assert (=> b!5946 (=> (not res!6517) (not e!3238))))

(declare-datatypes ((List!146 0))(
  ( (Nil!143) (Cons!142 (h!708 (_ BitVec 64)) (t!2281 List!146)) )
))
(declare-fun arrayNoDuplicates!0 (array!479 (_ BitVec 32) List!146) Bool)

(assert (=> b!5946 (= res!6517 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!143))))

(declare-fun mapNonEmpty!377 () Bool)

(declare-fun mapRes!377 () Bool)

(declare-fun tp!809 () Bool)

(declare-fun e!3237 () Bool)

(assert (=> mapNonEmpty!377 (= mapRes!377 (and tp!809 e!3237))))

(declare-fun mapValue!377 () ValueCell!119)

(declare-fun mapRest!377 () (Array (_ BitVec 32) ValueCell!119))

(declare-fun mapKey!377 () (_ BitVec 32))

(assert (=> mapNonEmpty!377 (= (arr!227 _values!1492) (store mapRest!377 mapKey!377 mapValue!377))))

(declare-fun b!5947 () Bool)

(assert (=> b!5947 (= e!3238 (not e!3241))))

(declare-fun res!6521 () Bool)

(assert (=> b!5947 (=> res!6521 e!3241)))

(declare-fun arrayContainsKey!0 (array!479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5947 (= res!6521 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!5947 e!3236))

(declare-fun c!422 () Bool)

(assert (=> b!5947 (= c!422 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!85 0))(
  ( (Unit!86) )
))
(declare-fun lt!1080 () Unit!85)

(declare-fun lemmaKeyInListMapIsInArray!28 (array!479 array!477 (_ BitVec 32) (_ BitVec 32) V!539 V!539 (_ BitVec 64) Int) Unit!85)

(assert (=> b!5947 (= lt!1080 (lemmaKeyInListMapIsInArray!28 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun mapIsEmpty!377 () Bool)

(assert (=> mapIsEmpty!377 mapRes!377))

(declare-fun b!5948 () Bool)

(declare-fun res!6523 () Bool)

(assert (=> b!5948 (=> (not res!6523) (not e!3238))))

(assert (=> b!5948 (= res!6523 (and (= (size!289 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!290 _keys!1806) (size!289 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5949 () Bool)

(assert (=> b!5949 (= e!3236 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun res!6519 () Bool)

(assert (=> start!800 (=> (not res!6519) (not e!3238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!800 (= res!6519 (validMask!0 mask!2250))))

(assert (=> start!800 e!3238))

(assert (=> start!800 tp!808))

(assert (=> start!800 true))

(declare-fun e!3240 () Bool)

(declare-fun array_inv!159 (array!477) Bool)

(assert (=> start!800 (and (array_inv!159 _values!1492) e!3240)))

(declare-fun tp_is_empty!271 () Bool)

(assert (=> start!800 tp_is_empty!271))

(declare-fun array_inv!160 (array!479) Bool)

(assert (=> start!800 (array_inv!160 _keys!1806)))

(declare-fun b!5943 () Bool)

(declare-fun e!3242 () Bool)

(assert (=> b!5943 (= e!3240 (and e!3242 mapRes!377))))

(declare-fun condMapEmpty!377 () Bool)

(declare-fun mapDefault!377 () ValueCell!119)

