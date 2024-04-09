; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108354 () Bool)

(assert start!108354)

(declare-fun mapNonEmpty!51809 () Bool)

(declare-fun mapRes!51809 () Bool)

(declare-fun tp!98784 () Bool)

(declare-fun e!730329 () Bool)

(assert (=> mapNonEmpty!51809 (= mapRes!51809 (and tp!98784 e!730329))))

(declare-fun mapKey!51809 () (_ BitVec 32))

(declare-datatypes ((V!49777 0))(
  ( (V!49778 (val!16827 Int)) )
))
(declare-datatypes ((ValueCell!15854 0))(
  ( (ValueCellFull!15854 (v!19425 V!49777)) (EmptyCell!15854) )
))
(declare-fun mapRest!51809 () (Array (_ BitVec 32) ValueCell!15854))

(declare-fun mapValue!51809 () ValueCell!15854)

(declare-datatypes ((array!84051 0))(
  ( (array!84052 (arr!40525 (Array (_ BitVec 32) ValueCell!15854)) (size!41076 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84051)

(assert (=> mapNonEmpty!51809 (= (arr!40525 _values!1445) (store mapRest!51809 mapKey!51809 mapValue!51809))))

(declare-fun b!1278435 () Bool)

(declare-fun res!849419 () Bool)

(declare-fun e!730327 () Bool)

(assert (=> b!1278435 (=> (not res!849419) (not e!730327))))

(declare-datatypes ((array!84053 0))(
  ( (array!84054 (arr!40526 (Array (_ BitVec 32) (_ BitVec 64))) (size!41077 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84053)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84053 (_ BitVec 32)) Bool)

(assert (=> b!1278435 (= res!849419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278436 () Bool)

(declare-fun e!730326 () Bool)

(declare-fun e!730328 () Bool)

(assert (=> b!1278436 (= e!730326 (and e!730328 mapRes!51809))))

(declare-fun condMapEmpty!51809 () Bool)

(declare-fun mapDefault!51809 () ValueCell!15854)

