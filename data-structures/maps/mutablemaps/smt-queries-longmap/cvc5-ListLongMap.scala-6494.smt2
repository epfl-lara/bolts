; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82832 () Bool)

(assert start!82832)

(declare-fun b_free!18931 () Bool)

(declare-fun b_next!18931 () Bool)

(assert (=> start!82832 (= b_free!18931 (not b_next!18931))))

(declare-fun tp!65922 () Bool)

(declare-fun b_and!30437 () Bool)

(assert (=> start!82832 (= tp!65922 b_and!30437)))

(declare-fun b!965735 () Bool)

(declare-fun e!544442 () Bool)

(declare-fun tp_is_empty!21739 () Bool)

(assert (=> b!965735 (= e!544442 tp_is_empty!21739)))

(declare-fun mapNonEmpty!34603 () Bool)

(declare-fun mapRes!34603 () Bool)

(declare-fun tp!65923 () Bool)

(declare-fun e!544444 () Bool)

(assert (=> mapNonEmpty!34603 (= mapRes!34603 (and tp!65923 e!544444))))

(declare-datatypes ((V!33969 0))(
  ( (V!33970 (val!10920 Int)) )
))
(declare-datatypes ((ValueCell!10388 0))(
  ( (ValueCellFull!10388 (v!13478 V!33969)) (EmptyCell!10388) )
))
(declare-fun mapValue!34603 () ValueCell!10388)

(declare-datatypes ((array!59543 0))(
  ( (array!59544 (arr!28636 (Array (_ BitVec 32) ValueCell!10388)) (size!29116 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59543)

(declare-fun mapKey!34603 () (_ BitVec 32))

(declare-fun mapRest!34603 () (Array (_ BitVec 32) ValueCell!10388))

(assert (=> mapNonEmpty!34603 (= (arr!28636 _values!1400) (store mapRest!34603 mapKey!34603 mapValue!34603))))

(declare-fun mapIsEmpty!34603 () Bool)

(assert (=> mapIsEmpty!34603 mapRes!34603))

(declare-fun b!965736 () Bool)

(declare-fun res!646547 () Bool)

(declare-fun e!544440 () Bool)

(assert (=> b!965736 (=> (not res!646547) (not e!544440))))

(declare-datatypes ((array!59545 0))(
  ( (array!59546 (arr!28637 (Array (_ BitVec 32) (_ BitVec 64))) (size!29117 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59545)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59545 (_ BitVec 32)) Bool)

(assert (=> b!965736 (= res!646547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965737 () Bool)

(assert (=> b!965737 (= e!544440 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431217 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33969)

(declare-fun zeroValue!1342 () V!33969)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14120 0))(
  ( (tuple2!14121 (_1!7070 (_ BitVec 64)) (_2!7070 V!33969)) )
))
(declare-datatypes ((List!20000 0))(
  ( (Nil!19997) (Cons!19996 (h!21158 tuple2!14120) (t!28371 List!20000)) )
))
(declare-datatypes ((ListLongMap!12831 0))(
  ( (ListLongMap!12832 (toList!6431 List!20000)) )
))
(declare-fun contains!5482 (ListLongMap!12831 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3616 (array!59545 array!59543 (_ BitVec 32) (_ BitVec 32) V!33969 V!33969 (_ BitVec 32) Int) ListLongMap!12831)

(assert (=> b!965737 (= lt!431217 (contains!5482 (getCurrentListMap!3616 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28637 _keys!1686) i!803)))))

(declare-fun res!646546 () Bool)

(assert (=> start!82832 (=> (not res!646546) (not e!544440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82832 (= res!646546 (validMask!0 mask!2110))))

(assert (=> start!82832 e!544440))

(assert (=> start!82832 true))

(declare-fun e!544443 () Bool)

(declare-fun array_inv!22083 (array!59543) Bool)

(assert (=> start!82832 (and (array_inv!22083 _values!1400) e!544443)))

(declare-fun array_inv!22084 (array!59545) Bool)

(assert (=> start!82832 (array_inv!22084 _keys!1686)))

(assert (=> start!82832 tp!65922))

(assert (=> start!82832 tp_is_empty!21739))

(declare-fun b!965738 () Bool)

(declare-fun res!646550 () Bool)

(assert (=> b!965738 (=> (not res!646550) (not e!544440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965738 (= res!646550 (validKeyInArray!0 (select (arr!28637 _keys!1686) i!803)))))

(declare-fun b!965739 () Bool)

(assert (=> b!965739 (= e!544444 tp_is_empty!21739)))

(declare-fun b!965740 () Bool)

(declare-fun res!646549 () Bool)

(assert (=> b!965740 (=> (not res!646549) (not e!544440))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!965740 (= res!646549 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29117 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29117 _keys!1686))))))

(declare-fun b!965741 () Bool)

(assert (=> b!965741 (= e!544443 (and e!544442 mapRes!34603))))

(declare-fun condMapEmpty!34603 () Bool)

(declare-fun mapDefault!34603 () ValueCell!10388)

