; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40612 () Bool)

(assert start!40612)

(declare-fun b_free!10615 () Bool)

(declare-fun b_next!10615 () Bool)

(assert (=> start!40612 (= b_free!10615 (not b_next!10615))))

(declare-fun tp!37665 () Bool)

(declare-fun b_and!18641 () Bool)

(assert (=> start!40612 (= tp!37665 b_and!18641)))

(declare-fun b!447812 () Bool)

(declare-fun res!266149 () Bool)

(declare-fun e!262850 () Bool)

(assert (=> b!447812 (=> (not res!266149) (not e!262850))))

(declare-datatypes ((array!27673 0))(
  ( (array!27674 (arr!13279 (Array (_ BitVec 32) (_ BitVec 64))) (size!13631 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27673)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447812 (= res!266149 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!266153 () Bool)

(assert (=> start!40612 (=> (not res!266153) (not e!262850))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40612 (= res!266153 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13631 _keys!709))))))

(assert (=> start!40612 e!262850))

(declare-fun tp_is_empty!11953 () Bool)

(assert (=> start!40612 tp_is_empty!11953))

(assert (=> start!40612 tp!37665))

(assert (=> start!40612 true))

(declare-datatypes ((V!17043 0))(
  ( (V!17044 (val!6021 Int)) )
))
(declare-datatypes ((ValueCell!5633 0))(
  ( (ValueCellFull!5633 (v!8272 V!17043)) (EmptyCell!5633) )
))
(declare-datatypes ((array!27675 0))(
  ( (array!27676 (arr!13280 (Array (_ BitVec 32) ValueCell!5633)) (size!13632 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27675)

(declare-fun e!262849 () Bool)

(declare-fun array_inv!9618 (array!27675) Bool)

(assert (=> start!40612 (and (array_inv!9618 _values!549) e!262849)))

(declare-fun array_inv!9619 (array!27673) Bool)

(assert (=> start!40612 (array_inv!9619 _keys!709)))

(declare-fun b!447813 () Bool)

(declare-fun e!262848 () Bool)

(assert (=> b!447813 (= e!262850 e!262848)))

(declare-fun res!266147 () Bool)

(assert (=> b!447813 (=> (not res!266147) (not e!262848))))

(declare-fun lt!204042 () array!27673)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27673 (_ BitVec 32)) Bool)

(assert (=> b!447813 (= res!266147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204042 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!447813 (= lt!204042 (array!27674 (store (arr!13279 _keys!709) i!563 k!794) (size!13631 _keys!709)))))

(declare-fun b!447814 () Bool)

(declare-fun res!266152 () Bool)

(assert (=> b!447814 (=> (not res!266152) (not e!262850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447814 (= res!266152 (validMask!0 mask!1025))))

(declare-fun b!447815 () Bool)

(assert (=> b!447815 (= e!262848 false)))

(declare-fun minValue!515 () V!17043)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17043)

(declare-datatypes ((tuple2!7826 0))(
  ( (tuple2!7827 (_1!3923 (_ BitVec 64)) (_2!3923 V!17043)) )
))
(declare-datatypes ((List!7937 0))(
  ( (Nil!7934) (Cons!7933 (h!8789 tuple2!7826) (t!13707 List!7937)) )
))
(declare-datatypes ((ListLongMap!6753 0))(
  ( (ListLongMap!6754 (toList!3392 List!7937)) )
))
(declare-fun lt!204043 () ListLongMap!6753)

(declare-fun v!412 () V!17043)

(declare-fun getCurrentListMapNoExtraKeys!1572 (array!27673 array!27675 (_ BitVec 32) (_ BitVec 32) V!17043 V!17043 (_ BitVec 32) Int) ListLongMap!6753)

(assert (=> b!447815 (= lt!204043 (getCurrentListMapNoExtraKeys!1572 lt!204042 (array!27676 (store (arr!13280 _values!549) i!563 (ValueCellFull!5633 v!412)) (size!13632 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204041 () ListLongMap!6753)

(assert (=> b!447815 (= lt!204041 (getCurrentListMapNoExtraKeys!1572 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447816 () Bool)

(declare-fun res!266150 () Bool)

(assert (=> b!447816 (=> (not res!266150) (not e!262850))))

(assert (=> b!447816 (= res!266150 (and (= (size!13632 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13631 _keys!709) (size!13632 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447817 () Bool)

(declare-fun e!262847 () Bool)

(assert (=> b!447817 (= e!262847 tp_is_empty!11953)))

(declare-fun b!447818 () Bool)

(declare-fun e!262846 () Bool)

(declare-fun mapRes!19563 () Bool)

(assert (=> b!447818 (= e!262849 (and e!262846 mapRes!19563))))

(declare-fun condMapEmpty!19563 () Bool)

(declare-fun mapDefault!19563 () ValueCell!5633)

