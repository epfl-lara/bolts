; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82746 () Bool)

(assert start!82746)

(declare-fun b_free!18851 () Bool)

(declare-fun b_next!18851 () Bool)

(assert (=> start!82746 (= b_free!18851 (not b_next!18851))))

(declare-fun tp!65674 () Bool)

(declare-fun b_and!30357 () Bool)

(assert (=> start!82746 (= tp!65674 b_and!30357)))

(declare-fun mapIsEmpty!34474 () Bool)

(declare-fun mapRes!34474 () Bool)

(assert (=> mapIsEmpty!34474 mapRes!34474))

(declare-fun b!964526 () Bool)

(declare-fun res!645726 () Bool)

(declare-fun e!543777 () Bool)

(assert (=> b!964526 (=> (not res!645726) (not e!543777))))

(declare-datatypes ((array!59379 0))(
  ( (array!59380 (arr!28554 (Array (_ BitVec 32) (_ BitVec 64))) (size!29034 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59379)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964526 (= res!645726 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29034 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29034 _keys!1686))))))

(declare-fun b!964527 () Bool)

(declare-fun res!645727 () Bool)

(assert (=> b!964527 (=> (not res!645727) (not e!543777))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33853 0))(
  ( (V!33854 (val!10877 Int)) )
))
(declare-datatypes ((ValueCell!10345 0))(
  ( (ValueCellFull!10345 (v!13435 V!33853)) (EmptyCell!10345) )
))
(declare-datatypes ((array!59381 0))(
  ( (array!59382 (arr!28555 (Array (_ BitVec 32) ValueCell!10345)) (size!29035 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59381)

(declare-fun minValue!1342 () V!33853)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33853)

(declare-datatypes ((tuple2!14064 0))(
  ( (tuple2!14065 (_1!7042 (_ BitVec 64)) (_2!7042 V!33853)) )
))
(declare-datatypes ((List!19940 0))(
  ( (Nil!19937) (Cons!19936 (h!21098 tuple2!14064) (t!28311 List!19940)) )
))
(declare-datatypes ((ListLongMap!12775 0))(
  ( (ListLongMap!12776 (toList!6403 List!19940)) )
))
(declare-fun contains!5457 (ListLongMap!12775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3588 (array!59379 array!59381 (_ BitVec 32) (_ BitVec 32) V!33853 V!33853 (_ BitVec 32) Int) ListLongMap!12775)

(assert (=> b!964527 (= res!645727 (contains!5457 (getCurrentListMap!3588 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28554 _keys!1686) i!803)))))

(declare-fun b!964528 () Bool)

(declare-fun res!645723 () Bool)

(assert (=> b!964528 (=> (not res!645723) (not e!543777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964528 (= res!645723 (validKeyInArray!0 (select (arr!28554 _keys!1686) i!803)))))

(declare-fun b!964529 () Bool)

(declare-fun res!645728 () Bool)

(assert (=> b!964529 (=> (not res!645728) (not e!543777))))

(declare-datatypes ((List!19941 0))(
  ( (Nil!19938) (Cons!19937 (h!21099 (_ BitVec 64)) (t!28312 List!19941)) )
))
(declare-fun arrayNoDuplicates!0 (array!59379 (_ BitVec 32) List!19941) Bool)

(assert (=> b!964529 (= res!645728 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19938))))

(declare-fun b!964530 () Bool)

(declare-fun e!543778 () Bool)

(assert (=> b!964530 (= e!543777 (not e!543778))))

(declare-fun res!645729 () Bool)

(assert (=> b!964530 (=> res!645729 e!543778)))

(assert (=> b!964530 (= res!645729 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29034 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964530 (contains!5457 (getCurrentListMap!3588 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28554 _keys!1686) i!803))))

(declare-datatypes ((Unit!32261 0))(
  ( (Unit!32262) )
))
(declare-fun lt!431088 () Unit!32261)

(declare-fun lemmaInListMapFromThenInFromMinusOne!37 (array!59379 array!59381 (_ BitVec 32) (_ BitVec 32) V!33853 V!33853 (_ BitVec 32) (_ BitVec 32) Int) Unit!32261)

(assert (=> b!964530 (= lt!431088 (lemmaInListMapFromThenInFromMinusOne!37 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapNonEmpty!34474 () Bool)

(declare-fun tp!65673 () Bool)

(declare-fun e!543779 () Bool)

(assert (=> mapNonEmpty!34474 (= mapRes!34474 (and tp!65673 e!543779))))

(declare-fun mapValue!34474 () ValueCell!10345)

(declare-fun mapKey!34474 () (_ BitVec 32))

(declare-fun mapRest!34474 () (Array (_ BitVec 32) ValueCell!10345))

(assert (=> mapNonEmpty!34474 (= (arr!28555 _values!1400) (store mapRest!34474 mapKey!34474 mapValue!34474))))

(declare-fun b!964531 () Bool)

(declare-fun e!543781 () Bool)

(declare-fun e!543776 () Bool)

(assert (=> b!964531 (= e!543781 (and e!543776 mapRes!34474))))

(declare-fun condMapEmpty!34474 () Bool)

(declare-fun mapDefault!34474 () ValueCell!10345)

