; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82764 () Bool)

(assert start!82764)

(declare-fun b_free!18869 () Bool)

(declare-fun b_next!18869 () Bool)

(assert (=> start!82764 (= b_free!18869 (not b_next!18869))))

(declare-fun tp!65728 () Bool)

(declare-fun b_and!30375 () Bool)

(assert (=> start!82764 (= tp!65728 b_and!30375)))

(declare-fun b!964826 () Bool)

(declare-fun res!645942 () Bool)

(declare-fun e!543933 () Bool)

(assert (=> b!964826 (=> (not res!645942) (not e!543933))))

(declare-datatypes ((V!33877 0))(
  ( (V!33878 (val!10886 Int)) )
))
(declare-datatypes ((ValueCell!10354 0))(
  ( (ValueCellFull!10354 (v!13444 V!33877)) (EmptyCell!10354) )
))
(declare-datatypes ((array!59411 0))(
  ( (array!59412 (arr!28570 (Array (_ BitVec 32) ValueCell!10354)) (size!29050 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59411)

(declare-datatypes ((array!59413 0))(
  ( (array!59414 (arr!28571 (Array (_ BitVec 32) (_ BitVec 64))) (size!29051 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59413)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!964826 (= res!645942 (and (= (size!29050 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29051 _keys!1686) (size!29050 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!645946 () Bool)

(assert (=> start!82764 (=> (not res!645946) (not e!543933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82764 (= res!645946 (validMask!0 mask!2110))))

(assert (=> start!82764 e!543933))

(assert (=> start!82764 true))

(declare-fun e!543932 () Bool)

(declare-fun array_inv!22035 (array!59411) Bool)

(assert (=> start!82764 (and (array_inv!22035 _values!1400) e!543932)))

(declare-fun array_inv!22036 (array!59413) Bool)

(assert (=> start!82764 (array_inv!22036 _keys!1686)))

(assert (=> start!82764 tp!65728))

(declare-fun tp_is_empty!21671 () Bool)

(assert (=> start!82764 tp_is_empty!21671))

(declare-fun b!964827 () Bool)

(declare-fun res!645945 () Bool)

(assert (=> b!964827 (=> (not res!645945) (not e!543933))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964827 (= res!645945 (validKeyInArray!0 (select (arr!28571 _keys!1686) i!803)))))

(declare-fun b!964828 () Bool)

(declare-fun e!543934 () Bool)

(assert (=> b!964828 (= e!543934 tp_is_empty!21671)))

(declare-fun mapIsEmpty!34501 () Bool)

(declare-fun mapRes!34501 () Bool)

(assert (=> mapIsEmpty!34501 mapRes!34501))

(declare-fun b!964829 () Bool)

(declare-fun res!645947 () Bool)

(assert (=> b!964829 (=> (not res!645947) (not e!543933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59413 (_ BitVec 32)) Bool)

(assert (=> b!964829 (= res!645947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964830 () Bool)

(assert (=> b!964830 (= e!543932 (and e!543934 mapRes!34501))))

(declare-fun condMapEmpty!34501 () Bool)

(declare-fun mapDefault!34501 () ValueCell!10354)

