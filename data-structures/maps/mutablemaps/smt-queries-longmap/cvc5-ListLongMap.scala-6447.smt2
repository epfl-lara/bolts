; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82550 () Bool)

(assert start!82550)

(declare-fun b!961526 () Bool)

(declare-fun e!542244 () Bool)

(assert (=> b!961526 (= e!542244 false)))

(declare-fun lt!430740 () Bool)

(declare-datatypes ((array!59005 0))(
  ( (array!59006 (arr!28367 (Array (_ BitVec 32) (_ BitVec 64))) (size!28847 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59005)

(declare-datatypes ((List!19818 0))(
  ( (Nil!19815) (Cons!19814 (h!20976 (_ BitVec 64)) (t!28189 List!19818)) )
))
(declare-fun arrayNoDuplicates!0 (array!59005 (_ BitVec 32) List!19818) Bool)

(assert (=> b!961526 (= lt!430740 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19815))))

(declare-fun mapIsEmpty!34180 () Bool)

(declare-fun mapRes!34180 () Bool)

(assert (=> mapIsEmpty!34180 mapRes!34180))

(declare-fun b!961527 () Bool)

(declare-fun e!542248 () Bool)

(declare-fun tp_is_empty!21457 () Bool)

(assert (=> b!961527 (= e!542248 tp_is_empty!21457)))

(declare-fun res!643607 () Bool)

(assert (=> start!82550 (=> (not res!643607) (not e!542244))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82550 (= res!643607 (validMask!0 mask!2110))))

(assert (=> start!82550 e!542244))

(assert (=> start!82550 true))

(declare-datatypes ((V!33593 0))(
  ( (V!33594 (val!10779 Int)) )
))
(declare-datatypes ((ValueCell!10247 0))(
  ( (ValueCellFull!10247 (v!13337 V!33593)) (EmptyCell!10247) )
))
(declare-datatypes ((array!59007 0))(
  ( (array!59008 (arr!28368 (Array (_ BitVec 32) ValueCell!10247)) (size!28848 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59007)

(declare-fun e!542247 () Bool)

(declare-fun array_inv!21909 (array!59007) Bool)

(assert (=> start!82550 (and (array_inv!21909 _values!1400) e!542247)))

(declare-fun array_inv!21910 (array!59005) Bool)

(assert (=> start!82550 (array_inv!21910 _keys!1686)))

(declare-fun b!961528 () Bool)

(declare-fun e!542245 () Bool)

(assert (=> b!961528 (= e!542245 tp_is_empty!21457)))

(declare-fun b!961529 () Bool)

(declare-fun res!643606 () Bool)

(assert (=> b!961529 (=> (not res!643606) (not e!542244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59005 (_ BitVec 32)) Bool)

(assert (=> b!961529 (= res!643606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34180 () Bool)

(declare-fun tp!65110 () Bool)

(assert (=> mapNonEmpty!34180 (= mapRes!34180 (and tp!65110 e!542245))))

(declare-fun mapValue!34180 () ValueCell!10247)

(declare-fun mapRest!34180 () (Array (_ BitVec 32) ValueCell!10247))

(declare-fun mapKey!34180 () (_ BitVec 32))

(assert (=> mapNonEmpty!34180 (= (arr!28368 _values!1400) (store mapRest!34180 mapKey!34180 mapValue!34180))))

(declare-fun b!961530 () Bool)

(assert (=> b!961530 (= e!542247 (and e!542248 mapRes!34180))))

(declare-fun condMapEmpty!34180 () Bool)

(declare-fun mapDefault!34180 () ValueCell!10247)

