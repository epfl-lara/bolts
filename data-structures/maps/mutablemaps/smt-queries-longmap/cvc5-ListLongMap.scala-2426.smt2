; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38322 () Bool)

(assert start!38322)

(declare-fun b!394942 () Bool)

(declare-fun res!226460 () Bool)

(declare-fun e!239138 () Bool)

(assert (=> b!394942 (=> (not res!226460) (not e!239138))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394942 (= res!226460 (validMask!0 mask!1025))))

(declare-fun b!394943 () Bool)

(declare-fun e!239135 () Bool)

(declare-fun tp_is_empty!9793 () Bool)

(assert (=> b!394943 (= e!239135 tp_is_empty!9793)))

(declare-fun b!394944 () Bool)

(declare-fun res!226462 () Bool)

(assert (=> b!394944 (=> (not res!226462) (not e!239138))))

(declare-datatypes ((array!23471 0))(
  ( (array!23472 (arr!11186 (Array (_ BitVec 32) (_ BitVec 64))) (size!11538 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23471)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14163 0))(
  ( (V!14164 (val!4941 Int)) )
))
(declare-datatypes ((ValueCell!4553 0))(
  ( (ValueCellFull!4553 (v!7183 V!14163)) (EmptyCell!4553) )
))
(declare-datatypes ((array!23473 0))(
  ( (array!23474 (arr!11187 (Array (_ BitVec 32) ValueCell!4553)) (size!11539 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23473)

(assert (=> b!394944 (= res!226462 (and (= (size!11539 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11538 _keys!709) (size!11539 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394945 () Bool)

(declare-fun res!226465 () Bool)

(assert (=> b!394945 (=> (not res!226465) (not e!239138))))

(declare-datatypes ((List!6465 0))(
  ( (Nil!6462) (Cons!6461 (h!7317 (_ BitVec 64)) (t!11647 List!6465)) )
))
(declare-fun arrayNoDuplicates!0 (array!23471 (_ BitVec 32) List!6465) Bool)

(assert (=> b!394945 (= res!226465 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6462))))

(declare-fun mapIsEmpty!16299 () Bool)

(declare-fun mapRes!16299 () Bool)

(assert (=> mapIsEmpty!16299 mapRes!16299))

(declare-fun b!394946 () Bool)

(declare-fun res!226459 () Bool)

(assert (=> b!394946 (=> (not res!226459) (not e!239138))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!394946 (= res!226459 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11538 _keys!709))))))

(declare-fun res!226461 () Bool)

(assert (=> start!38322 (=> (not res!226461) (not e!239138))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38322 (= res!226461 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11538 _keys!709))))))

(assert (=> start!38322 e!239138))

(assert (=> start!38322 true))

(declare-fun e!239136 () Bool)

(declare-fun array_inv!8188 (array!23473) Bool)

(assert (=> start!38322 (and (array_inv!8188 _values!549) e!239136)))

(declare-fun array_inv!8189 (array!23471) Bool)

(assert (=> start!38322 (array_inv!8189 _keys!709)))

(declare-fun b!394947 () Bool)

(declare-fun e!239134 () Bool)

(assert (=> b!394947 (= e!239134 tp_is_empty!9793)))

(declare-fun b!394948 () Bool)

(assert (=> b!394948 (= e!239138 (and (or (= (select (arr!11186 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11186 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!11538 _keys!709))))))

(declare-fun b!394949 () Bool)

(declare-fun res!226464 () Bool)

(assert (=> b!394949 (=> (not res!226464) (not e!239138))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394949 (= res!226464 (validKeyInArray!0 k!794))))

(declare-fun b!394950 () Bool)

(declare-fun res!226463 () Bool)

(assert (=> b!394950 (=> (not res!226463) (not e!239138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23471 (_ BitVec 32)) Bool)

(assert (=> b!394950 (= res!226463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16299 () Bool)

(declare-fun tp!32094 () Bool)

(assert (=> mapNonEmpty!16299 (= mapRes!16299 (and tp!32094 e!239134))))

(declare-fun mapKey!16299 () (_ BitVec 32))

(declare-fun mapValue!16299 () ValueCell!4553)

(declare-fun mapRest!16299 () (Array (_ BitVec 32) ValueCell!4553))

(assert (=> mapNonEmpty!16299 (= (arr!11187 _values!549) (store mapRest!16299 mapKey!16299 mapValue!16299))))

(declare-fun b!394951 () Bool)

(assert (=> b!394951 (= e!239136 (and e!239135 mapRes!16299))))

(declare-fun condMapEmpty!16299 () Bool)

(declare-fun mapDefault!16299 () ValueCell!4553)

