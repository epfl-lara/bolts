; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4492 () Bool)

(assert start!4492)

(declare-fun b_free!1255 () Bool)

(declare-fun b_next!1255 () Bool)

(assert (=> start!4492 (= b_free!1255 (not b_next!1255))))

(declare-fun tp!5203 () Bool)

(declare-fun b_and!2079 () Bool)

(assert (=> start!4492 (= tp!5203 b_and!2079)))

(declare-fun b!35070 () Bool)

(declare-fun e!22165 () Bool)

(declare-datatypes ((SeekEntryResult!164 0))(
  ( (MissingZero!164 (index!2778 (_ BitVec 32))) (Found!164 (index!2779 (_ BitVec 32))) (Intermediate!164 (undefined!976 Bool) (index!2780 (_ BitVec 32)) (x!6990 (_ BitVec 32))) (Undefined!164) (MissingVacant!164 (index!2781 (_ BitVec 32))) )
))
(declare-fun lt!12850 () SeekEntryResult!164)

(declare-datatypes ((array!2423 0))(
  ( (array!2424 (arr!1159 (Array (_ BitVec 32) (_ BitVec 64))) (size!1260 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2423)

(assert (=> b!35070 (= e!22165 (and (is-Found!164 lt!12850) (or (bvslt (index!2779 lt!12850) #b00000000000000000000000000000000) (bvsge (index!2779 lt!12850) (size!1260 _keys!1833)))))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2423 (_ BitVec 32)) SeekEntryResult!164)

(assert (=> b!35070 (= lt!12850 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!35071 () Bool)

(declare-fun res!21310 () Bool)

(assert (=> b!35071 (=> (not res!21310) (not e!22165))))

(declare-datatypes ((List!940 0))(
  ( (Nil!937) (Cons!936 (h!1503 (_ BitVec 64)) (t!3647 List!940)) )
))
(declare-fun arrayNoDuplicates!0 (array!2423 (_ BitVec 32) List!940) Bool)

(assert (=> b!35071 (= res!21310 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!937))))

(declare-fun b!35072 () Bool)

(declare-fun res!21312 () Bool)

(assert (=> b!35072 (=> (not res!21312) (not e!22165))))

(declare-datatypes ((V!1971 0))(
  ( (V!1972 (val!831 Int)) )
))
(declare-datatypes ((ValueCell!605 0))(
  ( (ValueCellFull!605 (v!1926 V!1971)) (EmptyCell!605) )
))
(declare-datatypes ((array!2425 0))(
  ( (array!2426 (arr!1160 (Array (_ BitVec 32) ValueCell!605)) (size!1261 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2425)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35072 (= res!21312 (and (= (size!1261 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1260 _keys!1833) (size!1261 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35073 () Bool)

(declare-fun res!21314 () Bool)

(assert (=> b!35073 (=> (not res!21314) (not e!22165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2423 (_ BitVec 32)) Bool)

(assert (=> b!35073 (= res!21314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35074 () Bool)

(declare-fun e!22164 () Bool)

(declare-fun e!22163 () Bool)

(declare-fun mapRes!1960 () Bool)

(assert (=> b!35074 (= e!22164 (and e!22163 mapRes!1960))))

(declare-fun condMapEmpty!1960 () Bool)

(declare-fun mapDefault!1960 () ValueCell!605)

