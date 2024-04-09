; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42128 () Bool)

(assert start!42128)

(declare-fun b_free!11653 () Bool)

(declare-fun b_next!11653 () Bool)

(assert (=> start!42128 (= b_free!11653 (not b_next!11653))))

(declare-fun tp!40981 () Bool)

(declare-fun b_and!20093 () Bool)

(assert (=> start!42128 (= tp!40981 b_and!20093)))

(declare-fun b!470042 () Bool)

(declare-fun res!280939 () Bool)

(declare-fun e!275345 () Bool)

(assert (=> b!470042 (=> (not res!280939) (not e!275345))))

(declare-datatypes ((array!29895 0))(
  ( (array!29896 (arr!14368 (Array (_ BitVec 32) (_ BitVec 64))) (size!14720 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29895)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29895 (_ BitVec 32)) Bool)

(assert (=> b!470042 (= res!280939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470043 () Bool)

(declare-fun e!275344 () Bool)

(declare-fun tp_is_empty!13081 () Bool)

(assert (=> b!470043 (= e!275344 tp_is_empty!13081)))

(declare-fun mapIsEmpty!21322 () Bool)

(declare-fun mapRes!21322 () Bool)

(assert (=> mapIsEmpty!21322 mapRes!21322))

(declare-fun b!470044 () Bool)

(declare-fun e!275346 () Bool)

(assert (=> b!470044 (= e!275346 tp_is_empty!13081)))

(declare-fun b!470045 () Bool)

(declare-fun e!275348 () Bool)

(assert (=> b!470045 (= e!275348 (and e!275346 mapRes!21322))))

(declare-fun condMapEmpty!21322 () Bool)

(declare-datatypes ((V!18547 0))(
  ( (V!18548 (val!6585 Int)) )
))
(declare-datatypes ((ValueCell!6197 0))(
  ( (ValueCellFull!6197 (v!8872 V!18547)) (EmptyCell!6197) )
))
(declare-datatypes ((array!29897 0))(
  ( (array!29898 (arr!14369 (Array (_ BitVec 32) ValueCell!6197)) (size!14721 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29897)

(declare-fun mapDefault!21322 () ValueCell!6197)

