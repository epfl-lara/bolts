; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82266 () Bool)

(assert start!82266)

(declare-fun b_free!18511 () Bool)

(declare-fun b_next!18511 () Bool)

(assert (=> start!82266 (= b_free!18511 (not b_next!18511))))

(declare-fun tp!64494 () Bool)

(declare-fun b_and!30017 () Bool)

(assert (=> start!82266 (= tp!64494 b_and!30017)))

(declare-fun mapIsEmpty!33805 () Bool)

(declare-fun mapRes!33805 () Bool)

(assert (=> mapIsEmpty!33805 mapRes!33805))

(declare-fun b!958427 () Bool)

(declare-fun res!641655 () Bool)

(declare-fun e!540350 () Bool)

(assert (=> b!958427 (=> (not res!641655) (not e!540350))))

(declare-datatypes ((array!58549 0))(
  ( (array!58550 (arr!28144 (Array (_ BitVec 32) (_ BitVec 64))) (size!28624 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58549)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58549 (_ BitVec 32)) Bool)

(assert (=> b!958427 (= res!641655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958428 () Bool)

(declare-fun res!641654 () Bool)

(assert (=> b!958428 (=> (not res!641654) (not e!540350))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958428 (= res!641654 (validKeyInArray!0 (select (arr!28144 _keys!1668) i!793)))))

(declare-fun b!958429 () Bool)

(declare-fun res!641650 () Bool)

(assert (=> b!958429 (=> (not res!641650) (not e!540350))))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958429 (= res!641650 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28624 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28624 _keys!1668))))))

(declare-fun b!958430 () Bool)

(declare-fun e!540353 () Bool)

(declare-fun tp_is_empty!21217 () Bool)

(assert (=> b!958430 (= e!540353 tp_is_empty!21217)))

(declare-fun b!958431 () Bool)

(declare-fun e!540349 () Bool)

(assert (=> b!958431 (= e!540349 tp_is_empty!21217)))

(declare-fun b!958432 () Bool)

(assert (=> b!958432 (= e!540350 false)))

(declare-datatypes ((V!33273 0))(
  ( (V!33274 (val!10659 Int)) )
))
(declare-fun minValue!1328 () V!33273)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun lt!430403 () Bool)

(declare-datatypes ((ValueCell!10127 0))(
  ( (ValueCellFull!10127 (v!13216 V!33273)) (EmptyCell!10127) )
))
(declare-datatypes ((array!58551 0))(
  ( (array!58552 (arr!28145 (Array (_ BitVec 32) ValueCell!10127)) (size!28625 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58551)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33273)

(declare-datatypes ((tuple2!13832 0))(
  ( (tuple2!13833 (_1!6926 (_ BitVec 64)) (_2!6926 V!33273)) )
))
(declare-datatypes ((List!19698 0))(
  ( (Nil!19695) (Cons!19694 (h!20856 tuple2!13832) (t!28069 List!19698)) )
))
(declare-datatypes ((ListLongMap!12543 0))(
  ( (ListLongMap!12544 (toList!6287 List!19698)) )
))
(declare-fun contains!5340 (ListLongMap!12543 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3472 (array!58549 array!58551 (_ BitVec 32) (_ BitVec 32) V!33273 V!33273 (_ BitVec 32) Int) ListLongMap!12543)

(assert (=> b!958432 (= lt!430403 (contains!5340 (getCurrentListMap!3472 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28144 _keys!1668) i!793)))))

(declare-fun b!958433 () Bool)

(declare-fun e!540352 () Bool)

(assert (=> b!958433 (= e!540352 (and e!540353 mapRes!33805))))

(declare-fun condMapEmpty!33805 () Bool)

(declare-fun mapDefault!33805 () ValueCell!10127)

