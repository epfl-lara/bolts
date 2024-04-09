; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82752 () Bool)

(assert start!82752)

(declare-fun b_free!18857 () Bool)

(declare-fun b_next!18857 () Bool)

(assert (=> start!82752 (= b_free!18857 (not b_next!18857))))

(declare-fun tp!65691 () Bool)

(declare-fun b_and!30363 () Bool)

(assert (=> start!82752 (= tp!65691 b_and!30363)))

(declare-fun b!964634 () Bool)

(declare-fun e!543830 () Bool)

(declare-fun e!543835 () Bool)

(assert (=> b!964634 (= e!543830 (not e!543835))))

(declare-fun res!645809 () Bool)

(assert (=> b!964634 (=> res!645809 e!543835)))

(declare-datatypes ((array!59389 0))(
  ( (array!59390 (arr!28559 (Array (_ BitVec 32) (_ BitVec 64))) (size!29039 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59389)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964634 (= res!645809 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29039 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33861 0))(
  ( (V!33862 (val!10880 Int)) )
))
(declare-datatypes ((ValueCell!10348 0))(
  ( (ValueCellFull!10348 (v!13438 V!33861)) (EmptyCell!10348) )
))
(declare-datatypes ((array!59391 0))(
  ( (array!59392 (arr!28560 (Array (_ BitVec 32) ValueCell!10348)) (size!29040 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59391)

(declare-fun minValue!1342 () V!33861)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33861)

(declare-datatypes ((tuple2!14068 0))(
  ( (tuple2!14069 (_1!7044 (_ BitVec 64)) (_2!7044 V!33861)) )
))
(declare-datatypes ((List!19944 0))(
  ( (Nil!19941) (Cons!19940 (h!21102 tuple2!14068) (t!28315 List!19944)) )
))
(declare-datatypes ((ListLongMap!12779 0))(
  ( (ListLongMap!12780 (toList!6405 List!19944)) )
))
(declare-fun contains!5459 (ListLongMap!12779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3590 (array!59389 array!59391 (_ BitVec 32) (_ BitVec 32) V!33861 V!33861 (_ BitVec 32) Int) ListLongMap!12779)

(assert (=> b!964634 (contains!5459 (getCurrentListMap!3590 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28559 _keys!1686) i!803))))

(declare-datatypes ((Unit!32265 0))(
  ( (Unit!32266) )
))
(declare-fun lt!431106 () Unit!32265)

(declare-fun lemmaInListMapFromThenInFromMinusOne!39 (array!59389 array!59391 (_ BitVec 32) (_ BitVec 32) V!33861 V!33861 (_ BitVec 32) (_ BitVec 32) Int) Unit!32265)

(assert (=> b!964634 (= lt!431106 (lemmaInListMapFromThenInFromMinusOne!39 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34483 () Bool)

(declare-fun mapRes!34483 () Bool)

(assert (=> mapIsEmpty!34483 mapRes!34483))

(declare-fun b!964635 () Bool)

(declare-fun e!543834 () Bool)

(declare-fun e!543833 () Bool)

(assert (=> b!964635 (= e!543834 (and e!543833 mapRes!34483))))

(declare-fun condMapEmpty!34483 () Bool)

(declare-fun mapDefault!34483 () ValueCell!10348)

