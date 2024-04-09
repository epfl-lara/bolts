; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!840 () Bool)

(assert start!840)

(declare-fun b_free!233 () Bool)

(declare-fun b_next!233 () Bool)

(assert (=> start!840 (= b_free!233 (not b_next!233))))

(declare-fun tp!928 () Bool)

(declare-fun b_and!379 () Bool)

(assert (=> start!840 (= tp!928 b_and!379)))

(declare-fun mapNonEmpty!437 () Bool)

(declare-fun mapRes!437 () Bool)

(declare-fun tp!929 () Bool)

(declare-fun e!3701 () Bool)

(assert (=> mapNonEmpty!437 (= mapRes!437 (and tp!929 e!3701))))

(declare-datatypes ((V!591 0))(
  ( (V!592 (val!161 Int)) )
))
(declare-datatypes ((ValueCell!139 0))(
  ( (ValueCellFull!139 (v!1252 V!591)) (EmptyCell!139) )
))
(declare-fun mapRest!437 () (Array (_ BitVec 32) ValueCell!139))

(declare-fun mapValue!437 () ValueCell!139)

(declare-datatypes ((array!555 0))(
  ( (array!556 (arr!266 (Array (_ BitVec 32) ValueCell!139)) (size!328 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!555)

(declare-fun mapKey!437 () (_ BitVec 32))

(assert (=> mapNonEmpty!437 (= (arr!266 _values!1492) (store mapRest!437 mapKey!437 mapValue!437))))

(declare-fun b!6704 () Bool)

(declare-fun res!6983 () Bool)

(declare-fun e!3702 () Bool)

(assert (=> b!6704 (=> (not res!6983) (not e!3702))))

(declare-datatypes ((array!557 0))(
  ( (array!558 (arr!267 (Array (_ BitVec 32) (_ BitVec 64))) (size!329 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!557)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!557 (_ BitVec 32)) Bool)

(assert (=> b!6704 (= res!6983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6705 () Bool)

(declare-fun e!3704 () Bool)

(assert (=> b!6705 (= e!3704 true)))

(declare-datatypes ((SeekEntryResult!24 0))(
  ( (MissingZero!24 (index!2215 (_ BitVec 32))) (Found!24 (index!2216 (_ BitVec 32))) (Intermediate!24 (undefined!836 Bool) (index!2217 (_ BitVec 32)) (x!2546 (_ BitVec 32))) (Undefined!24) (MissingVacant!24 (index!2218 (_ BitVec 32))) )
))
(declare-fun lt!1288 () SeekEntryResult!24)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!557 (_ BitVec 32)) SeekEntryResult!24)

(assert (=> b!6705 (= lt!1288 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6706 () Bool)

(declare-fun e!3705 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6706 (= e!3705 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6708 () Bool)

(declare-fun tp_is_empty!311 () Bool)

(assert (=> b!6708 (= e!3701 tp_is_empty!311)))

(declare-fun b!6709 () Bool)

(declare-fun res!6981 () Bool)

(assert (=> b!6709 (=> (not res!6981) (not e!3702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6709 (= res!6981 (validKeyInArray!0 k!1278))))

(declare-fun b!6710 () Bool)

(declare-fun e!3700 () Bool)

(assert (=> b!6710 (= e!3700 e!3704)))

(declare-fun res!6982 () Bool)

(assert (=> b!6710 (=> res!6982 e!3704)))

(assert (=> b!6710 (= res!6982 (not (= (size!329 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1289 () (_ BitVec 32))

(assert (=> b!6710 (arrayForallSeekEntryOrOpenFound!0 lt!1289 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!113 0))(
  ( (Unit!114) )
))
(declare-fun lt!1287 () Unit!113)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!113)

(assert (=> b!6710 (= lt!1287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1289))))

(declare-fun arrayScanForKey!0 (array!557 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6710 (= lt!1289 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6711 () Bool)

(declare-fun res!6987 () Bool)

(assert (=> b!6711 (=> (not res!6987) (not e!3702))))

(declare-datatypes ((List!177 0))(
  ( (Nil!174) (Cons!173 (h!739 (_ BitVec 64)) (t!2312 List!177)) )
))
(declare-fun arrayNoDuplicates!0 (array!557 (_ BitVec 32) List!177) Bool)

(assert (=> b!6711 (= res!6987 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!174))))

(declare-fun b!6712 () Bool)

(declare-fun arrayContainsKey!0 (array!557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6712 (= e!3705 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6707 () Bool)

(declare-fun res!6986 () Bool)

(assert (=> b!6707 (=> (not res!6986) (not e!3702))))

(assert (=> b!6707 (= res!6986 (and (= (size!328 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!329 _keys!1806) (size!328 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!6985 () Bool)

(assert (=> start!840 (=> (not res!6985) (not e!3702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!840 (= res!6985 (validMask!0 mask!2250))))

(assert (=> start!840 e!3702))

(assert (=> start!840 tp!928))

(assert (=> start!840 true))

(declare-fun e!3706 () Bool)

(declare-fun array_inv!191 (array!555) Bool)

(assert (=> start!840 (and (array_inv!191 _values!1492) e!3706)))

(assert (=> start!840 tp_is_empty!311))

(declare-fun array_inv!192 (array!557) Bool)

(assert (=> start!840 (array_inv!192 _keys!1806)))

(declare-fun b!6713 () Bool)

(declare-fun e!3703 () Bool)

(assert (=> b!6713 (= e!3706 (and e!3703 mapRes!437))))

(declare-fun condMapEmpty!437 () Bool)

(declare-fun mapDefault!437 () ValueCell!139)

