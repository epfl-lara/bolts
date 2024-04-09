; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82326 () Bool)

(assert start!82326)

(declare-fun b_free!18571 () Bool)

(declare-fun b_next!18571 () Bool)

(assert (=> start!82326 (= b_free!18571 (not b_next!18571))))

(declare-fun tp!64674 () Bool)

(declare-fun b_and!30077 () Bool)

(assert (=> start!82326 (= tp!64674 b_and!30077)))

(declare-fun mapNonEmpty!33895 () Bool)

(declare-fun mapRes!33895 () Bool)

(declare-fun tp!64675 () Bool)

(declare-fun e!540802 () Bool)

(assert (=> mapNonEmpty!33895 (= mapRes!33895 (and tp!64675 e!540802))))

(declare-datatypes ((V!33353 0))(
  ( (V!33354 (val!10689 Int)) )
))
(declare-datatypes ((ValueCell!10157 0))(
  ( (ValueCellFull!10157 (v!13246 V!33353)) (EmptyCell!10157) )
))
(declare-datatypes ((array!58663 0))(
  ( (array!58664 (arr!28201 (Array (_ BitVec 32) ValueCell!10157)) (size!28681 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58663)

(declare-fun mapKey!33895 () (_ BitVec 32))

(declare-fun mapValue!33895 () ValueCell!10157)

(declare-fun mapRest!33895 () (Array (_ BitVec 32) ValueCell!10157))

(assert (=> mapNonEmpty!33895 (= (arr!28201 _values!1386) (store mapRest!33895 mapKey!33895 mapValue!33895))))

(declare-fun b!959302 () Bool)

(declare-fun res!642257 () Bool)

(declare-fun e!540800 () Bool)

(assert (=> b!959302 (=> (not res!642257) (not e!540800))))

(declare-datatypes ((array!58665 0))(
  ( (array!58666 (arr!28202 (Array (_ BitVec 32) (_ BitVec 64))) (size!28682 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58665)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959302 (= res!642257 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28682 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28682 _keys!1668))))))

(declare-fun res!642261 () Bool)

(assert (=> start!82326 (=> (not res!642261) (not e!540800))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82326 (= res!642261 (validMask!0 mask!2088))))

(assert (=> start!82326 e!540800))

(assert (=> start!82326 true))

(declare-fun tp_is_empty!21277 () Bool)

(assert (=> start!82326 tp_is_empty!21277))

(declare-fun array_inv!21805 (array!58665) Bool)

(assert (=> start!82326 (array_inv!21805 _keys!1668)))

(declare-fun e!540803 () Bool)

(declare-fun array_inv!21806 (array!58663) Bool)

(assert (=> start!82326 (and (array_inv!21806 _values!1386) e!540803)))

(assert (=> start!82326 tp!64674))

(declare-fun b!959303 () Bool)

(assert (=> b!959303 (= e!540802 tp_is_empty!21277)))

(declare-fun b!959304 () Bool)

(declare-fun e!540801 () Bool)

(assert (=> b!959304 (= e!540803 (and e!540801 mapRes!33895))))

(declare-fun condMapEmpty!33895 () Bool)

(declare-fun mapDefault!33895 () ValueCell!10157)

