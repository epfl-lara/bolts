; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84266 () Bool)

(assert start!84266)

(declare-fun b_free!19939 () Bool)

(declare-fun b_next!19939 () Bool)

(assert (=> start!84266 (= b_free!19939 (not b_next!19939))))

(declare-fun tp!69421 () Bool)

(declare-fun b_and!31973 () Bool)

(assert (=> start!84266 (= tp!69421 b_and!31973)))

(declare-fun b!985322 () Bool)

(declare-fun res!659455 () Bool)

(declare-fun e!555441 () Bool)

(assert (=> b!985322 (=> (not res!659455) (not e!555441))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62047 0))(
  ( (array!62048 (arr!29877 (Array (_ BitVec 32) (_ BitVec 64))) (size!30357 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62047)

(assert (=> b!985322 (= res!659455 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30357 _keys!1544))))))

(declare-fun b!985323 () Bool)

(declare-fun res!659454 () Bool)

(assert (=> b!985323 (=> (not res!659454) (not e!555441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985323 (= res!659454 (validKeyInArray!0 (select (arr!29877 _keys!1544) from!1932)))))

(declare-fun b!985324 () Bool)

(declare-fun res!659457 () Bool)

(assert (=> b!985324 (=> (not res!659457) (not e!555441))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985324 (= res!659457 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985325 () Bool)

(declare-fun res!659456 () Bool)

(assert (=> b!985325 (=> (not res!659456) (not e!555441))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62047 (_ BitVec 32)) Bool)

(assert (=> b!985325 (= res!659456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985326 () Bool)

(declare-fun res!659459 () Bool)

(assert (=> b!985326 (=> (not res!659459) (not e!555441))))

(declare-datatypes ((List!20823 0))(
  ( (Nil!20820) (Cons!20819 (h!21981 (_ BitVec 64)) (t!29714 List!20823)) )
))
(declare-fun arrayNoDuplicates!0 (array!62047 (_ BitVec 32) List!20823) Bool)

(assert (=> b!985326 (= res!659459 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20820))))

(declare-fun mapNonEmpty!36590 () Bool)

(declare-fun mapRes!36590 () Bool)

(declare-fun tp!69422 () Bool)

(declare-fun e!555444 () Bool)

(assert (=> mapNonEmpty!36590 (= mapRes!36590 (and tp!69422 e!555444))))

(declare-datatypes ((V!35705 0))(
  ( (V!35706 (val!11571 Int)) )
))
(declare-datatypes ((ValueCell!11039 0))(
  ( (ValueCellFull!11039 (v!14133 V!35705)) (EmptyCell!11039) )
))
(declare-fun mapRest!36590 () (Array (_ BitVec 32) ValueCell!11039))

(declare-datatypes ((array!62049 0))(
  ( (array!62050 (arr!29878 (Array (_ BitVec 32) ValueCell!11039)) (size!30358 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62049)

(declare-fun mapKey!36590 () (_ BitVec 32))

(declare-fun mapValue!36590 () ValueCell!11039)

(assert (=> mapNonEmpty!36590 (= (arr!29878 _values!1278) (store mapRest!36590 mapKey!36590 mapValue!36590))))

(declare-fun b!985327 () Bool)

(declare-fun e!555442 () Bool)

(declare-fun e!555445 () Bool)

(assert (=> b!985327 (= e!555442 (and e!555445 mapRes!36590))))

(declare-fun condMapEmpty!36590 () Bool)

(declare-fun mapDefault!36590 () ValueCell!11039)

