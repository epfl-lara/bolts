; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82770 () Bool)

(assert start!82770)

(declare-fun b_free!18875 () Bool)

(declare-fun b_next!18875 () Bool)

(assert (=> start!82770 (= b_free!18875 (not b_next!18875))))

(declare-fun tp!65745 () Bool)

(declare-fun b_and!30381 () Bool)

(assert (=> start!82770 (= tp!65745 b_and!30381)))

(declare-fun mapIsEmpty!34510 () Bool)

(declare-fun mapRes!34510 () Bool)

(assert (=> mapIsEmpty!34510 mapRes!34510))

(declare-fun b!964907 () Bool)

(declare-fun e!543976 () Bool)

(declare-fun tp_is_empty!21677 () Bool)

(assert (=> b!964907 (= e!543976 tp_is_empty!21677)))

(declare-fun b!964908 () Bool)

(declare-fun res!646001 () Bool)

(declare-fun e!543975 () Bool)

(assert (=> b!964908 (=> (not res!646001) (not e!543975))))

(declare-datatypes ((array!59423 0))(
  ( (array!59424 (arr!28576 (Array (_ BitVec 32) (_ BitVec 64))) (size!29056 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59423)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59423 (_ BitVec 32)) Bool)

(assert (=> b!964908 (= res!646001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964909 () Bool)

(declare-fun res!645998 () Bool)

(assert (=> b!964909 (=> (not res!645998) (not e!543975))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!964909 (= res!645998 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29056 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29056 _keys!1686))))))

(declare-fun b!964910 () Bool)

(declare-fun e!543978 () Bool)

(assert (=> b!964910 (= e!543978 tp_is_empty!21677)))

(declare-fun b!964911 () Bool)

(declare-fun e!543977 () Bool)

(assert (=> b!964911 (= e!543977 (and e!543976 mapRes!34510))))

(declare-fun condMapEmpty!34510 () Bool)

(declare-datatypes ((V!33885 0))(
  ( (V!33886 (val!10889 Int)) )
))
(declare-datatypes ((ValueCell!10357 0))(
  ( (ValueCellFull!10357 (v!13447 V!33885)) (EmptyCell!10357) )
))
(declare-datatypes ((array!59425 0))(
  ( (array!59426 (arr!28577 (Array (_ BitVec 32) ValueCell!10357)) (size!29057 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59425)

(declare-fun mapDefault!34510 () ValueCell!10357)

