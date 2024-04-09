; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82598 () Bool)

(assert start!82598)

(declare-fun b_free!18703 () Bool)

(declare-fun b_next!18703 () Bool)

(assert (=> start!82598 (= b_free!18703 (not b_next!18703))))

(declare-fun tp!65230 () Bool)

(declare-fun b_and!30209 () Bool)

(assert (=> start!82598 (= tp!65230 b_and!30209)))

(declare-fun b!962126 () Bool)

(declare-fun res!643994 () Bool)

(declare-fun e!542606 () Bool)

(assert (=> b!962126 (=> (not res!643994) (not e!542606))))

(declare-datatypes ((array!59095 0))(
  ( (array!59096 (arr!28412 (Array (_ BitVec 32) (_ BitVec 64))) (size!28892 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59095)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59095 (_ BitVec 32)) Bool)

(assert (=> b!962126 (= res!643994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!643992 () Bool)

(assert (=> start!82598 (=> (not res!643992) (not e!542606))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82598 (= res!643992 (validMask!0 mask!2110))))

(assert (=> start!82598 e!542606))

(assert (=> start!82598 true))

(declare-datatypes ((V!33657 0))(
  ( (V!33658 (val!10803 Int)) )
))
(declare-datatypes ((ValueCell!10271 0))(
  ( (ValueCellFull!10271 (v!13361 V!33657)) (EmptyCell!10271) )
))
(declare-datatypes ((array!59097 0))(
  ( (array!59098 (arr!28413 (Array (_ BitVec 32) ValueCell!10271)) (size!28893 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59097)

(declare-fun e!542608 () Bool)

(declare-fun array_inv!21939 (array!59097) Bool)

(assert (=> start!82598 (and (array_inv!21939 _values!1400) e!542608)))

(declare-fun array_inv!21940 (array!59095) Bool)

(assert (=> start!82598 (array_inv!21940 _keys!1686)))

(assert (=> start!82598 tp!65230))

(declare-fun tp_is_empty!21505 () Bool)

(assert (=> start!82598 tp_is_empty!21505))

(declare-fun b!962127 () Bool)

(declare-fun e!542605 () Bool)

(assert (=> b!962127 (= e!542605 tp_is_empty!21505)))

(declare-fun b!962128 () Bool)

(assert (=> b!962128 (= e!542606 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!430803 () Bool)

(declare-fun minValue!1342 () V!33657)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33657)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13960 0))(
  ( (tuple2!13961 (_1!6990 (_ BitVec 64)) (_2!6990 V!33657)) )
))
(declare-datatypes ((List!19843 0))(
  ( (Nil!19840) (Cons!19839 (h!21001 tuple2!13960) (t!28214 List!19843)) )
))
(declare-datatypes ((ListLongMap!12671 0))(
  ( (ListLongMap!12672 (toList!6351 List!19843)) )
))
(declare-fun contains!5405 (ListLongMap!12671 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3536 (array!59095 array!59097 (_ BitVec 32) (_ BitVec 32) V!33657 V!33657 (_ BitVec 32) Int) ListLongMap!12671)

(assert (=> b!962128 (= lt!430803 (contains!5405 (getCurrentListMap!3536 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28412 _keys!1686) i!803)))))

(declare-fun mapNonEmpty!34252 () Bool)

(declare-fun mapRes!34252 () Bool)

(declare-fun tp!65229 () Bool)

(assert (=> mapNonEmpty!34252 (= mapRes!34252 (and tp!65229 e!542605))))

(declare-fun mapKey!34252 () (_ BitVec 32))

(declare-fun mapRest!34252 () (Array (_ BitVec 32) ValueCell!10271))

(declare-fun mapValue!34252 () ValueCell!10271)

(assert (=> mapNonEmpty!34252 (= (arr!28413 _values!1400) (store mapRest!34252 mapKey!34252 mapValue!34252))))

(declare-fun b!962129 () Bool)

(declare-fun res!643991 () Bool)

(assert (=> b!962129 (=> (not res!643991) (not e!542606))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962129 (= res!643991 (validKeyInArray!0 (select (arr!28412 _keys!1686) i!803)))))

(declare-fun b!962130 () Bool)

(declare-fun res!643990 () Bool)

(assert (=> b!962130 (=> (not res!643990) (not e!542606))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962130 (= res!643990 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28892 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28892 _keys!1686))))))

(declare-fun b!962131 () Bool)

(declare-fun e!542604 () Bool)

(assert (=> b!962131 (= e!542608 (and e!542604 mapRes!34252))))

(declare-fun condMapEmpty!34252 () Bool)

(declare-fun mapDefault!34252 () ValueCell!10271)

