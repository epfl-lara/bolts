; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40970 () Bool)

(assert start!40970)

(declare-fun b_free!10897 () Bool)

(declare-fun b_next!10897 () Bool)

(assert (=> start!40970 (= b_free!10897 (not b_next!10897))))

(declare-fun tp!38517 () Bool)

(declare-fun b_and!19057 () Bool)

(assert (=> start!40970 (= tp!38517 b_and!19057)))

(declare-fun b!455612 () Bool)

(declare-fun res!271820 () Bool)

(declare-fun e!266324 () Bool)

(assert (=> b!455612 (=> (not res!271820) (not e!266324))))

(declare-datatypes ((array!28239 0))(
  ( (array!28240 (arr!13560 (Array (_ BitVec 32) (_ BitVec 64))) (size!13912 (_ BitVec 32))) )
))
(declare-fun lt!206373 () array!28239)

(declare-datatypes ((List!8174 0))(
  ( (Nil!8171) (Cons!8170 (h!9026 (_ BitVec 64)) (t!14010 List!8174)) )
))
(declare-fun arrayNoDuplicates!0 (array!28239 (_ BitVec 32) List!8174) Bool)

(assert (=> b!455612 (= res!271820 (arrayNoDuplicates!0 lt!206373 #b00000000000000000000000000000000 Nil!8171))))

(declare-fun b!455613 () Bool)

(declare-fun res!271822 () Bool)

(declare-fun e!266319 () Bool)

(assert (=> b!455613 (=> (not res!271822) (not e!266319))))

(declare-fun _keys!709 () array!28239)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455613 (= res!271822 (or (= (select (arr!13560 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13560 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455614 () Bool)

(declare-fun res!271815 () Bool)

(assert (=> b!455614 (=> (not res!271815) (not e!266319))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28239 (_ BitVec 32)) Bool)

(assert (=> b!455614 (= res!271815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455615 () Bool)

(assert (=> b!455615 (= e!266324 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17419 0))(
  ( (V!17420 (val!6162 Int)) )
))
(declare-fun minValue!515 () V!17419)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5774 0))(
  ( (ValueCellFull!5774 (v!8424 V!17419)) (EmptyCell!5774) )
))
(declare-datatypes ((array!28241 0))(
  ( (array!28242 (arr!13561 (Array (_ BitVec 32) ValueCell!5774)) (size!13913 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28241)

(declare-fun v!412 () V!17419)

(declare-fun zeroValue!515 () V!17419)

(declare-datatypes ((tuple2!8068 0))(
  ( (tuple2!8069 (_1!4044 (_ BitVec 64)) (_2!4044 V!17419)) )
))
(declare-datatypes ((List!8175 0))(
  ( (Nil!8172) (Cons!8171 (h!9027 tuple2!8068) (t!14011 List!8175)) )
))
(declare-datatypes ((ListLongMap!6995 0))(
  ( (ListLongMap!6996 (toList!3513 List!8175)) )
))
(declare-fun lt!206371 () ListLongMap!6995)

(declare-fun getCurrentListMapNoExtraKeys!1689 (array!28239 array!28241 (_ BitVec 32) (_ BitVec 32) V!17419 V!17419 (_ BitVec 32) Int) ListLongMap!6995)

(assert (=> b!455615 (= lt!206371 (getCurrentListMapNoExtraKeys!1689 lt!206373 (array!28242 (store (arr!13561 _values!549) i!563 (ValueCellFull!5774 v!412)) (size!13913 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206372 () ListLongMap!6995)

(assert (=> b!455615 (= lt!206372 (getCurrentListMapNoExtraKeys!1689 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19993 () Bool)

(declare-fun mapRes!19993 () Bool)

(declare-fun tp!38518 () Bool)

(declare-fun e!266322 () Bool)

(assert (=> mapNonEmpty!19993 (= mapRes!19993 (and tp!38518 e!266322))))

(declare-fun mapRest!19993 () (Array (_ BitVec 32) ValueCell!5774))

(declare-fun mapKey!19993 () (_ BitVec 32))

(declare-fun mapValue!19993 () ValueCell!5774)

(assert (=> mapNonEmpty!19993 (= (arr!13561 _values!549) (store mapRest!19993 mapKey!19993 mapValue!19993))))

(declare-fun b!455616 () Bool)

(declare-fun res!271818 () Bool)

(assert (=> b!455616 (=> (not res!271818) (not e!266319))))

(assert (=> b!455616 (= res!271818 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8171))))

(declare-fun b!455617 () Bool)

(declare-fun res!271817 () Bool)

(assert (=> b!455617 (=> (not res!271817) (not e!266319))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455617 (= res!271817 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455618 () Bool)

(declare-fun e!266320 () Bool)

(declare-fun e!266321 () Bool)

(assert (=> b!455618 (= e!266320 (and e!266321 mapRes!19993))))

(declare-fun condMapEmpty!19993 () Bool)

(declare-fun mapDefault!19993 () ValueCell!5774)

