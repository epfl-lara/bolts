; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38484 () Bool)

(assert start!38484)

(declare-fun b!396983 () Bool)

(declare-fun res!227961 () Bool)

(declare-fun e!240131 () Bool)

(assert (=> b!396983 (=> (not res!227961) (not e!240131))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396983 (= res!227961 (validMask!0 mask!1025))))

(declare-fun b!396984 () Bool)

(declare-fun res!227958 () Bool)

(assert (=> b!396984 (=> (not res!227958) (not e!240131))))

(declare-datatypes ((array!23673 0))(
  ( (array!23674 (arr!11283 (Array (_ BitVec 32) (_ BitVec 64))) (size!11635 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23673)

(declare-datatypes ((List!6505 0))(
  ( (Nil!6502) (Cons!6501 (h!7357 (_ BitVec 64)) (t!11687 List!6505)) )
))
(declare-fun arrayNoDuplicates!0 (array!23673 (_ BitVec 32) List!6505) Bool)

(assert (=> b!396984 (= res!227958 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6502))))

(declare-fun b!396985 () Bool)

(declare-fun res!227960 () Bool)

(assert (=> b!396985 (=> (not res!227960) (not e!240131))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396985 (= res!227960 (or (= (select (arr!11283 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11283 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396986 () Bool)

(declare-fun res!227956 () Bool)

(assert (=> b!396986 (=> (not res!227956) (not e!240131))))

(assert (=> b!396986 (= res!227956 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11635 _keys!709))))))

(declare-fun b!396987 () Bool)

(declare-fun e!240130 () Bool)

(assert (=> b!396987 (= e!240130 false)))

(declare-fun lt!187226 () Bool)

(declare-fun lt!187227 () array!23673)

(assert (=> b!396987 (= lt!187226 (arrayNoDuplicates!0 lt!187227 #b00000000000000000000000000000000 Nil!6502))))

(declare-fun mapNonEmpty!16464 () Bool)

(declare-fun mapRes!16464 () Bool)

(declare-fun tp!32259 () Bool)

(declare-fun e!240133 () Bool)

(assert (=> mapNonEmpty!16464 (= mapRes!16464 (and tp!32259 e!240133))))

(declare-fun mapKey!16464 () (_ BitVec 32))

(declare-datatypes ((V!14299 0))(
  ( (V!14300 (val!4992 Int)) )
))
(declare-datatypes ((ValueCell!4604 0))(
  ( (ValueCellFull!4604 (v!7235 V!14299)) (EmptyCell!4604) )
))
(declare-fun mapRest!16464 () (Array (_ BitVec 32) ValueCell!4604))

(declare-datatypes ((array!23675 0))(
  ( (array!23676 (arr!11284 (Array (_ BitVec 32) ValueCell!4604)) (size!11636 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23675)

(declare-fun mapValue!16464 () ValueCell!4604)

(assert (=> mapNonEmpty!16464 (= (arr!11284 _values!549) (store mapRest!16464 mapKey!16464 mapValue!16464))))

(declare-fun b!396988 () Bool)

(declare-fun res!227959 () Bool)

(assert (=> b!396988 (=> (not res!227959) (not e!240131))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396988 (= res!227959 (validKeyInArray!0 k!794))))

(declare-fun b!396989 () Bool)

(declare-fun res!227963 () Bool)

(assert (=> b!396989 (=> (not res!227963) (not e!240131))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396989 (= res!227963 (and (= (size!11636 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11635 _keys!709) (size!11636 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!227964 () Bool)

(assert (=> start!38484 (=> (not res!227964) (not e!240131))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38484 (= res!227964 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11635 _keys!709))))))

(assert (=> start!38484 e!240131))

(assert (=> start!38484 true))

(declare-fun e!240128 () Bool)

(declare-fun array_inv!8258 (array!23675) Bool)

(assert (=> start!38484 (and (array_inv!8258 _values!549) e!240128)))

(declare-fun array_inv!8259 (array!23673) Bool)

(assert (=> start!38484 (array_inv!8259 _keys!709)))

(declare-fun b!396990 () Bool)

(declare-fun tp_is_empty!9895 () Bool)

(assert (=> b!396990 (= e!240133 tp_is_empty!9895)))

(declare-fun b!396991 () Bool)

(declare-fun res!227955 () Bool)

(assert (=> b!396991 (=> (not res!227955) (not e!240131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23673 (_ BitVec 32)) Bool)

(assert (=> b!396991 (= res!227955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396992 () Bool)

(declare-fun res!227957 () Bool)

(assert (=> b!396992 (=> (not res!227957) (not e!240131))))

(declare-fun arrayContainsKey!0 (array!23673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396992 (= res!227957 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396993 () Bool)

(assert (=> b!396993 (= e!240131 e!240130)))

(declare-fun res!227962 () Bool)

(assert (=> b!396993 (=> (not res!227962) (not e!240130))))

(assert (=> b!396993 (= res!227962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187227 mask!1025))))

(assert (=> b!396993 (= lt!187227 (array!23674 (store (arr!11283 _keys!709) i!563 k!794) (size!11635 _keys!709)))))

(declare-fun b!396994 () Bool)

(declare-fun e!240132 () Bool)

(assert (=> b!396994 (= e!240128 (and e!240132 mapRes!16464))))

(declare-fun condMapEmpty!16464 () Bool)

(declare-fun mapDefault!16464 () ValueCell!4604)

