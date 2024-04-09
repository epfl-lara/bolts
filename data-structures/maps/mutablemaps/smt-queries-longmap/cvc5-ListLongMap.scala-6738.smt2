; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84444 () Bool)

(assert start!84444)

(declare-fun b_free!19987 () Bool)

(declare-fun b_next!19987 () Bool)

(assert (=> start!84444 (= b_free!19987 (not b_next!19987))))

(declare-fun tp!69740 () Bool)

(declare-fun b_and!32055 () Bool)

(assert (=> start!84444 (= tp!69740 b_and!32055)))

(declare-fun b!987256 () Bool)

(declare-fun res!660582 () Bool)

(declare-fun e!556734 () Bool)

(assert (=> b!987256 (=> (not res!660582) (not e!556734))))

(declare-datatypes ((array!62353 0))(
  ( (array!62354 (arr!30029 (Array (_ BitVec 32) (_ BitVec 64))) (size!30509 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62353)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62353 (_ BitVec 32)) Bool)

(assert (=> b!987256 (= res!660582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!660585 () Bool)

(assert (=> start!84444 (=> (not res!660585) (not e!556734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84444 (= res!660585 (validMask!0 mask!1948))))

(assert (=> start!84444 e!556734))

(assert (=> start!84444 true))

(declare-fun tp_is_empty!23203 () Bool)

(assert (=> start!84444 tp_is_empty!23203))

(declare-datatypes ((V!35921 0))(
  ( (V!35922 (val!11652 Int)) )
))
(declare-datatypes ((ValueCell!11120 0))(
  ( (ValueCellFull!11120 (v!14215 V!35921)) (EmptyCell!11120) )
))
(declare-datatypes ((array!62355 0))(
  ( (array!62356 (arr!30030 (Array (_ BitVec 32) ValueCell!11120)) (size!30510 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62355)

(declare-fun e!556735 () Bool)

(declare-fun array_inv!23063 (array!62355) Bool)

(assert (=> start!84444 (and (array_inv!23063 _values!1278) e!556735)))

(assert (=> start!84444 tp!69740))

(declare-fun array_inv!23064 (array!62353) Bool)

(assert (=> start!84444 (array_inv!23064 _keys!1544)))

(declare-fun b!987257 () Bool)

(declare-fun res!660586 () Bool)

(assert (=> b!987257 (=> (not res!660586) (not e!556734))))

(declare-datatypes ((List!20892 0))(
  ( (Nil!20889) (Cons!20888 (h!22050 (_ BitVec 64)) (t!29815 List!20892)) )
))
(declare-fun arrayNoDuplicates!0 (array!62353 (_ BitVec 32) List!20892) Bool)

(assert (=> b!987257 (= res!660586 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20889))))

(declare-fun mapIsEmpty!36836 () Bool)

(declare-fun mapRes!36836 () Bool)

(assert (=> mapIsEmpty!36836 mapRes!36836))

(declare-fun b!987258 () Bool)

(declare-fun e!556732 () Bool)

(assert (=> b!987258 (= e!556732 tp_is_empty!23203)))

(declare-fun b!987259 () Bool)

(declare-fun res!660584 () Bool)

(assert (=> b!987259 (=> (not res!660584) (not e!556734))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987259 (= res!660584 (and (= (size!30510 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30509 _keys!1544) (size!30510 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987260 () Bool)

(declare-fun e!556736 () Bool)

(assert (=> b!987260 (= e!556736 tp_is_empty!23203)))

(declare-fun b!987261 () Bool)

(declare-fun res!660588 () Bool)

(assert (=> b!987261 (=> (not res!660588) (not e!556734))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!987261 (= res!660588 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30509 _keys!1544))))))

(declare-fun b!987262 () Bool)

(declare-fun res!660587 () Bool)

(assert (=> b!987262 (=> (not res!660587) (not e!556734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987262 (= res!660587 (validKeyInArray!0 (select (arr!30029 _keys!1544) from!1932)))))

(declare-fun b!987263 () Bool)

(assert (=> b!987263 (= e!556735 (and e!556732 mapRes!36836))))

(declare-fun condMapEmpty!36836 () Bool)

(declare-fun mapDefault!36836 () ValueCell!11120)

