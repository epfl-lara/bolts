; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82980 () Bool)

(assert start!82980)

(declare-fun b_free!19079 () Bool)

(declare-fun b_next!19079 () Bool)

(assert (=> start!82980 (= b_free!19079 (not b_next!19079))))

(declare-fun tp!66367 () Bool)

(declare-fun b_and!30585 () Bool)

(assert (=> start!82980 (= tp!66367 b_and!30585)))

(declare-fun b!968000 () Bool)

(declare-fun e!545563 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!968000 (= e!545563 (bvsge i!803 #b00000000000000000000000000000000))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34165 0))(
  ( (V!34166 (val!10994 Int)) )
))
(declare-datatypes ((ValueCell!10462 0))(
  ( (ValueCellFull!10462 (v!13552 V!34165)) (EmptyCell!10462) )
))
(declare-datatypes ((array!59825 0))(
  ( (array!59826 (arr!28777 (Array (_ BitVec 32) ValueCell!10462)) (size!29257 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59825)

(declare-datatypes ((array!59827 0))(
  ( (array!59828 (arr!28778 (Array (_ BitVec 32) (_ BitVec 64))) (size!29258 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59827)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34165)

(declare-fun defaultEntry!1403 () Int)

(declare-fun minValue!1342 () V!34165)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-datatypes ((tuple2!14234 0))(
  ( (tuple2!14235 (_1!7127 (_ BitVec 64)) (_2!7127 V!34165)) )
))
(declare-datatypes ((List!20106 0))(
  ( (Nil!20103) (Cons!20102 (h!21264 tuple2!14234) (t!28477 List!20106)) )
))
(declare-datatypes ((ListLongMap!12945 0))(
  ( (ListLongMap!12946 (toList!6488 List!20106)) )
))
(declare-fun contains!5539 (ListLongMap!12945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3673 (array!59827 array!59825 (_ BitVec 32) (_ BitVec 32) V!34165 V!34165 (_ BitVec 32) Int) ListLongMap!12945)

(assert (=> b!968000 (contains!5539 (getCurrentListMap!3673 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28778 _keys!1686) i!803))))

(declare-datatypes ((Unit!32325 0))(
  ( (Unit!32326) )
))
(declare-fun lt!431438 () Unit!32325)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun lemmaInListMapFromThenInFromSmaller!34 (array!59827 array!59825 (_ BitVec 32) (_ BitVec 32) V!34165 V!34165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32325)

(assert (=> b!968000 (= lt!431438 (lemmaInListMapFromThenInFromSmaller!34 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun mapNonEmpty!34825 () Bool)

(declare-fun mapRes!34825 () Bool)

(declare-fun tp!66366 () Bool)

(declare-fun e!545560 () Bool)

(assert (=> mapNonEmpty!34825 (= mapRes!34825 (and tp!66366 e!545560))))

(declare-fun mapKey!34825 () (_ BitVec 32))

(declare-fun mapRest!34825 () (Array (_ BitVec 32) ValueCell!10462))

(declare-fun mapValue!34825 () ValueCell!10462)

(assert (=> mapNonEmpty!34825 (= (arr!28777 _values!1400) (store mapRest!34825 mapKey!34825 mapValue!34825))))

(declare-fun b!968001 () Bool)

(declare-fun e!545562 () Bool)

(assert (=> b!968001 (= e!545562 (not e!545563))))

(declare-fun res!648147 () Bool)

(assert (=> b!968001 (=> res!648147 e!545563)))

(assert (=> b!968001 (= res!648147 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29258 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!968001 (contains!5539 (getCurrentListMap!3673 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28778 _keys!1686) i!803))))

(declare-fun lt!431439 () Unit!32325)

(declare-fun lemmaInListMapFromThenInFromMinusOne!69 (array!59827 array!59825 (_ BitVec 32) (_ BitVec 32) V!34165 V!34165 (_ BitVec 32) (_ BitVec 32) Int) Unit!32325)

(assert (=> b!968001 (= lt!431439 (lemmaInListMapFromThenInFromMinusOne!69 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!968002 () Bool)

(declare-fun res!648148 () Bool)

(assert (=> b!968002 (=> (not res!648148) (not e!545562))))

(assert (=> b!968002 (= res!648148 (bvsgt from!2084 newFrom!159))))

(declare-fun b!968003 () Bool)

(declare-fun res!648150 () Bool)

(assert (=> b!968003 (=> (not res!648150) (not e!545562))))

(assert (=> b!968003 (= res!648150 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29258 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29258 _keys!1686))))))

(declare-fun mapIsEmpty!34825 () Bool)

(assert (=> mapIsEmpty!34825 mapRes!34825))

(declare-fun res!648151 () Bool)

(assert (=> start!82980 (=> (not res!648151) (not e!545562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82980 (= res!648151 (validMask!0 mask!2110))))

(assert (=> start!82980 e!545562))

(assert (=> start!82980 true))

(declare-fun e!545561 () Bool)

(declare-fun array_inv!22175 (array!59825) Bool)

(assert (=> start!82980 (and (array_inv!22175 _values!1400) e!545561)))

(declare-fun array_inv!22176 (array!59827) Bool)

(assert (=> start!82980 (array_inv!22176 _keys!1686)))

(assert (=> start!82980 tp!66367))

(declare-fun tp_is_empty!21887 () Bool)

(assert (=> start!82980 tp_is_empty!21887))

(declare-fun b!968004 () Bool)

(declare-fun e!545559 () Bool)

(assert (=> b!968004 (= e!545561 (and e!545559 mapRes!34825))))

(declare-fun condMapEmpty!34825 () Bool)

(declare-fun mapDefault!34825 () ValueCell!10462)

