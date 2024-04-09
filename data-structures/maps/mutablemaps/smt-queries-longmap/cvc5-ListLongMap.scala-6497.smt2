; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82850 () Bool)

(assert start!82850)

(declare-fun b_free!18949 () Bool)

(declare-fun b_next!18949 () Bool)

(assert (=> start!82850 (= b_free!18949 (not b_next!18949))))

(declare-fun tp!65977 () Bool)

(declare-fun b_and!30455 () Bool)

(assert (=> start!82850 (= tp!65977 b_and!30455)))

(declare-fun b!965978 () Bool)

(declare-fun res!646709 () Bool)

(declare-fun e!544576 () Bool)

(assert (=> b!965978 (=> (not res!646709) (not e!544576))))

(declare-datatypes ((array!59577 0))(
  ( (array!59578 (arr!28653 (Array (_ BitVec 32) (_ BitVec 64))) (size!29133 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59577)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965978 (= res!646709 (validKeyInArray!0 (select (arr!28653 _keys!1686) i!803)))))

(declare-fun b!965979 () Bool)

(assert (=> b!965979 (= e!544576 false)))

(declare-fun lt!431244 () Bool)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33993 0))(
  ( (V!33994 (val!10929 Int)) )
))
(declare-datatypes ((ValueCell!10397 0))(
  ( (ValueCellFull!10397 (v!13487 V!33993)) (EmptyCell!10397) )
))
(declare-datatypes ((array!59579 0))(
  ( (array!59580 (arr!28654 (Array (_ BitVec 32) ValueCell!10397)) (size!29134 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59579)

(declare-fun minValue!1342 () V!33993)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33993)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14136 0))(
  ( (tuple2!14137 (_1!7078 (_ BitVec 64)) (_2!7078 V!33993)) )
))
(declare-datatypes ((List!20013 0))(
  ( (Nil!20010) (Cons!20009 (h!21171 tuple2!14136) (t!28384 List!20013)) )
))
(declare-datatypes ((ListLongMap!12847 0))(
  ( (ListLongMap!12848 (toList!6439 List!20013)) )
))
(declare-fun contains!5490 (ListLongMap!12847 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3624 (array!59577 array!59579 (_ BitVec 32) (_ BitVec 32) V!33993 V!33993 (_ BitVec 32) Int) ListLongMap!12847)

(assert (=> b!965979 (= lt!431244 (contains!5490 (getCurrentListMap!3624 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28653 _keys!1686) i!803)))))

(declare-fun b!965980 () Bool)

(declare-fun res!646711 () Bool)

(assert (=> b!965980 (=> (not res!646711) (not e!544576))))

(assert (=> b!965980 (= res!646711 (and (= (size!29134 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29133 _keys!1686) (size!29134 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965981 () Bool)

(declare-fun res!646707 () Bool)

(assert (=> b!965981 (=> (not res!646707) (not e!544576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59577 (_ BitVec 32)) Bool)

(assert (=> b!965981 (= res!646707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!646712 () Bool)

(assert (=> start!82850 (=> (not res!646712) (not e!544576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82850 (= res!646712 (validMask!0 mask!2110))))

(assert (=> start!82850 e!544576))

(assert (=> start!82850 true))

(declare-fun e!544575 () Bool)

(declare-fun array_inv!22095 (array!59579) Bool)

(assert (=> start!82850 (and (array_inv!22095 _values!1400) e!544575)))

(declare-fun array_inv!22096 (array!59577) Bool)

(assert (=> start!82850 (array_inv!22096 _keys!1686)))

(assert (=> start!82850 tp!65977))

(declare-fun tp_is_empty!21757 () Bool)

(assert (=> start!82850 tp_is_empty!21757))

(declare-fun b!965982 () Bool)

(declare-fun e!544578 () Bool)

(declare-fun mapRes!34630 () Bool)

(assert (=> b!965982 (= e!544575 (and e!544578 mapRes!34630))))

(declare-fun condMapEmpty!34630 () Bool)

(declare-fun mapDefault!34630 () ValueCell!10397)

