; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34318 () Bool)

(assert start!34318)

(declare-fun b_free!7285 () Bool)

(declare-fun b_next!7285 () Bool)

(assert (=> start!34318 (= b_free!7285 (not b_next!7285))))

(declare-fun tp!25395 () Bool)

(declare-fun b_and!14507 () Bool)

(assert (=> start!34318 (= tp!25395 b_and!14507)))

(declare-fun b!342168 () Bool)

(declare-fun e!209842 () Bool)

(declare-fun e!209843 () Bool)

(assert (=> b!342168 (= e!209842 e!209843)))

(declare-fun res!189208 () Bool)

(assert (=> b!342168 (=> (not res!189208) (not e!209843))))

(declare-datatypes ((SeekEntryResult!3294 0))(
  ( (MissingZero!3294 (index!15355 (_ BitVec 32))) (Found!3294 (index!15356 (_ BitVec 32))) (Intermediate!3294 (undefined!4106 Bool) (index!15357 (_ BitVec 32)) (x!34079 (_ BitVec 32))) (Undefined!3294) (MissingVacant!3294 (index!15358 (_ BitVec 32))) )
))
(declare-fun lt!162095 () SeekEntryResult!3294)

(assert (=> b!342168 (= res!189208 (and (not (is-Found!3294 lt!162095)) (not (is-MissingZero!3294 lt!162095)) (is-MissingVacant!3294 lt!162095)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!18041 0))(
  ( (array!18042 (arr!8536 (Array (_ BitVec 32) (_ BitVec 64))) (size!8888 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18041)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18041 (_ BitVec 32)) SeekEntryResult!3294)

(assert (=> b!342168 (= lt!162095 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!342169 () Bool)

(declare-fun res!189206 () Bool)

(assert (=> b!342169 (=> (not res!189206) (not e!209842))))

(declare-datatypes ((V!10627 0))(
  ( (V!10628 (val!3663 Int)) )
))
(declare-fun zeroValue!1467 () V!10627)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3275 0))(
  ( (ValueCellFull!3275 (v!5833 V!10627)) (EmptyCell!3275) )
))
(declare-datatypes ((array!18043 0))(
  ( (array!18044 (arr!8537 (Array (_ BitVec 32) ValueCell!3275)) (size!8889 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18043)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10627)

(declare-datatypes ((tuple2!5298 0))(
  ( (tuple2!5299 (_1!2659 (_ BitVec 64)) (_2!2659 V!10627)) )
))
(declare-datatypes ((List!4939 0))(
  ( (Nil!4936) (Cons!4935 (h!5791 tuple2!5298) (t!10059 List!4939)) )
))
(declare-datatypes ((ListLongMap!4225 0))(
  ( (ListLongMap!4226 (toList!2128 List!4939)) )
))
(declare-fun contains!2180 (ListLongMap!4225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1648 (array!18041 array!18043 (_ BitVec 32) (_ BitVec 32) V!10627 V!10627 (_ BitVec 32) Int) ListLongMap!4225)

(assert (=> b!342169 (= res!189206 (not (contains!2180 (getCurrentListMap!1648 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342170 () Bool)

(declare-fun e!209846 () Bool)

(declare-fun tp_is_empty!7237 () Bool)

(assert (=> b!342170 (= e!209846 tp_is_empty!7237)))

(declare-fun b!342171 () Bool)

(declare-datatypes ((Unit!10651 0))(
  ( (Unit!10652) )
))
(declare-fun e!209844 () Unit!10651)

(declare-fun Unit!10653 () Unit!10651)

(assert (=> b!342171 (= e!209844 Unit!10653)))

(declare-fun res!189204 () Bool)

(assert (=> start!34318 (=> (not res!189204) (not e!209842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34318 (= res!189204 (validMask!0 mask!2385))))

(assert (=> start!34318 e!209842))

(assert (=> start!34318 true))

(assert (=> start!34318 tp_is_empty!7237))

(assert (=> start!34318 tp!25395))

(declare-fun e!209841 () Bool)

(declare-fun array_inv!6312 (array!18043) Bool)

(assert (=> start!34318 (and (array_inv!6312 _values!1525) e!209841)))

(declare-fun array_inv!6313 (array!18041) Bool)

(assert (=> start!34318 (array_inv!6313 _keys!1895)))

(declare-fun b!342172 () Bool)

(declare-fun lt!162096 () Bool)

(assert (=> b!342172 (= e!209843 (and (not lt!162096) (not (= (size!8888 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun lt!162093 () Unit!10651)

(assert (=> b!342172 (= lt!162093 e!209844)))

(declare-fun c!52730 () Bool)

(assert (=> b!342172 (= c!52730 lt!162096)))

(declare-fun arrayContainsKey!0 (array!18041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342172 (= lt!162096 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342173 () Bool)

(declare-fun e!209847 () Bool)

(assert (=> b!342173 (= e!209847 tp_is_empty!7237)))

(declare-fun b!342174 () Bool)

(declare-fun Unit!10654 () Unit!10651)

(assert (=> b!342174 (= e!209844 Unit!10654)))

(declare-fun lt!162094 () Unit!10651)

(declare-fun lemmaArrayContainsKeyThenInListMap!300 (array!18041 array!18043 (_ BitVec 32) (_ BitVec 32) V!10627 V!10627 (_ BitVec 64) (_ BitVec 32) Int) Unit!10651)

(declare-fun arrayScanForKey!0 (array!18041 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342174 (= lt!162094 (lemmaArrayContainsKeyThenInListMap!300 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342174 false))

(declare-fun b!342175 () Bool)

(declare-fun res!189209 () Bool)

(assert (=> b!342175 (=> (not res!189209) (not e!209842))))

(declare-datatypes ((List!4940 0))(
  ( (Nil!4937) (Cons!4936 (h!5792 (_ BitVec 64)) (t!10060 List!4940)) )
))
(declare-fun arrayNoDuplicates!0 (array!18041 (_ BitVec 32) List!4940) Bool)

(assert (=> b!342175 (= res!189209 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4937))))

(declare-fun b!342176 () Bool)

(declare-fun res!189203 () Bool)

(assert (=> b!342176 (=> (not res!189203) (not e!209842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342176 (= res!189203 (validKeyInArray!0 k!1348))))

(declare-fun b!342177 () Bool)

(declare-fun mapRes!12288 () Bool)

(assert (=> b!342177 (= e!209841 (and e!209846 mapRes!12288))))

(declare-fun condMapEmpty!12288 () Bool)

(declare-fun mapDefault!12288 () ValueCell!3275)

