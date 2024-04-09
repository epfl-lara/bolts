; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77710 () Bool)

(assert start!77710)

(declare-fun b_free!16267 () Bool)

(declare-fun b_next!16267 () Bool)

(assert (=> start!77710 (= b_free!16267 (not b_next!16267))))

(declare-fun tp!57064 () Bool)

(declare-fun b_and!26705 () Bool)

(assert (=> start!77710 (= tp!57064 b_and!26705)))

(declare-fun b!905834 () Bool)

(declare-fun res!611409 () Bool)

(declare-fun e!507652 () Bool)

(assert (=> b!905834 (=> (not res!611409) (not e!507652))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53400 0))(
  ( (array!53401 (arr!25655 (Array (_ BitVec 32) (_ BitVec 64))) (size!26115 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53400)

(declare-fun k!1033 () (_ BitVec 64))

(assert (=> b!905834 (= res!611409 (and (= (select (arr!25655 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905835 () Bool)

(declare-fun e!507647 () Bool)

(declare-fun tp_is_empty!18685 () Bool)

(assert (=> b!905835 (= e!507647 tp_is_empty!18685)))

(declare-fun b!905836 () Bool)

(declare-fun e!507648 () Bool)

(assert (=> b!905836 (= e!507652 (not e!507648))))

(declare-fun res!611412 () Bool)

(assert (=> b!905836 (=> res!611412 e!507648)))

(assert (=> b!905836 (= res!611412 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26115 _keys!1386))))))

(declare-datatypes ((V!29879 0))(
  ( (V!29880 (val!9393 Int)) )
))
(declare-datatypes ((ValueCell!8861 0))(
  ( (ValueCellFull!8861 (v!11898 V!29879)) (EmptyCell!8861) )
))
(declare-datatypes ((array!53402 0))(
  ( (array!53403 (arr!25656 (Array (_ BitVec 32) ValueCell!8861)) (size!26116 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53402)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408700 () V!29879)

(declare-fun get!13498 (ValueCell!8861 V!29879) V!29879)

(declare-fun dynLambda!1342 (Int (_ BitVec 64)) V!29879)

(assert (=> b!905836 (= lt!408700 (get!13498 (select (arr!25656 _values!1152) i!717) (dynLambda!1342 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905836 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29879)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29879)

(declare-datatypes ((Unit!30711 0))(
  ( (Unit!30712) )
))
(declare-fun lt!408699 () Unit!30711)

(declare-fun lemmaKeyInListMapIsInArray!215 (array!53400 array!53402 (_ BitVec 32) (_ BitVec 32) V!29879 V!29879 (_ BitVec 64) Int) Unit!30711)

(assert (=> b!905836 (= lt!408699 (lemmaKeyInListMapIsInArray!215 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!905837 () Bool)

(declare-fun e!507649 () Bool)

(assert (=> b!905837 (= e!507649 true)))

(declare-datatypes ((tuple2!12244 0))(
  ( (tuple2!12245 (_1!6132 (_ BitVec 64)) (_2!6132 V!29879)) )
))
(declare-datatypes ((List!18107 0))(
  ( (Nil!18104) (Cons!18103 (h!19249 tuple2!12244) (t!25554 List!18107)) )
))
(declare-datatypes ((ListLongMap!10955 0))(
  ( (ListLongMap!10956 (toList!5493 List!18107)) )
))
(declare-fun lt!408701 () ListLongMap!10955)

(declare-fun apply!470 (ListLongMap!10955 (_ BitVec 64)) V!29879)

(assert (=> b!905837 (= (apply!470 lt!408701 k!1033) lt!408700)))

(declare-fun lt!408697 () Unit!30711)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!21 (array!53400 array!53402 (_ BitVec 32) (_ BitVec 32) V!29879 V!29879 (_ BitVec 64) V!29879 (_ BitVec 32) Int) Unit!30711)

(assert (=> b!905837 (= lt!408697 (lemmaListMapApplyFromThenApplyFromZero!21 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!408700 i!717 defaultEntry!1160))))

(declare-fun b!905838 () Bool)

(declare-fun res!611408 () Bool)

(declare-fun e!507651 () Bool)

(assert (=> b!905838 (=> (not res!611408) (not e!507651))))

(assert (=> b!905838 (= res!611408 (and (= (size!26116 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26115 _keys!1386) (size!26116 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905839 () Bool)

(declare-fun res!611403 () Bool)

(assert (=> b!905839 (=> (not res!611403) (not e!507651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53400 (_ BitVec 32)) Bool)

(assert (=> b!905839 (= res!611403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905840 () Bool)

(assert (=> b!905840 (= e!507651 e!507652)))

(declare-fun res!611405 () Bool)

(assert (=> b!905840 (=> (not res!611405) (not e!507652))))

(declare-fun contains!4503 (ListLongMap!10955 (_ BitVec 64)) Bool)

(assert (=> b!905840 (= res!611405 (contains!4503 lt!408701 k!1033))))

(declare-fun getCurrentListMap!2727 (array!53400 array!53402 (_ BitVec 32) (_ BitVec 32) V!29879 V!29879 (_ BitVec 32) Int) ListLongMap!10955)

(assert (=> b!905840 (= lt!408701 (getCurrentListMap!2727 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905841 () Bool)

(declare-fun e!507646 () Bool)

(declare-fun e!507653 () Bool)

(declare-fun mapRes!29740 () Bool)

(assert (=> b!905841 (= e!507646 (and e!507653 mapRes!29740))))

(declare-fun condMapEmpty!29740 () Bool)

(declare-fun mapDefault!29740 () ValueCell!8861)

