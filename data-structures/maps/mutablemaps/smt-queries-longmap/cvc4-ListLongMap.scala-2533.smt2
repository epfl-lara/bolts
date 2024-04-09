; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39028 () Bool)

(assert start!39028)

(declare-fun b!408887 () Bool)

(declare-fun e!245348 () Bool)

(declare-fun tp_is_empty!10439 () Bool)

(assert (=> b!408887 (= e!245348 tp_is_empty!10439)))

(declare-fun b!408888 () Bool)

(declare-fun res!236765 () Bool)

(declare-fun e!245353 () Bool)

(assert (=> b!408888 (=> (not res!236765) (not e!245353))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408888 (= res!236765 (validKeyInArray!0 k!794))))

(declare-fun b!408889 () Bool)

(declare-fun res!236764 () Bool)

(assert (=> b!408889 (=> (not res!236764) (not e!245353))))

(declare-datatypes ((array!24731 0))(
  ( (array!24732 (arr!11812 (Array (_ BitVec 32) (_ BitVec 64))) (size!12164 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24731)

(declare-fun arrayContainsKey!0 (array!24731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408889 (= res!236764 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17280 () Bool)

(declare-fun mapRes!17280 () Bool)

(declare-fun tp!33399 () Bool)

(declare-fun e!245351 () Bool)

(assert (=> mapNonEmpty!17280 (= mapRes!17280 (and tp!33399 e!245351))))

(declare-datatypes ((V!15023 0))(
  ( (V!15024 (val!5264 Int)) )
))
(declare-datatypes ((ValueCell!4876 0))(
  ( (ValueCellFull!4876 (v!7507 V!15023)) (EmptyCell!4876) )
))
(declare-fun mapRest!17280 () (Array (_ BitVec 32) ValueCell!4876))

(declare-datatypes ((array!24733 0))(
  ( (array!24734 (arr!11813 (Array (_ BitVec 32) ValueCell!4876)) (size!12165 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24733)

(declare-fun mapKey!17280 () (_ BitVec 32))

(declare-fun mapValue!17280 () ValueCell!4876)

(assert (=> mapNonEmpty!17280 (= (arr!11813 _values!549) (store mapRest!17280 mapKey!17280 mapValue!17280))))

(declare-fun res!236771 () Bool)

(assert (=> start!39028 (=> (not res!236771) (not e!245353))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39028 (= res!236771 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12164 _keys!709))))))

(assert (=> start!39028 e!245353))

(assert (=> start!39028 true))

(declare-fun e!245352 () Bool)

(declare-fun array_inv!8626 (array!24733) Bool)

(assert (=> start!39028 (and (array_inv!8626 _values!549) e!245352)))

(declare-fun array_inv!8627 (array!24731) Bool)

(assert (=> start!39028 (array_inv!8627 _keys!709)))

(declare-fun b!408890 () Bool)

(declare-fun res!236768 () Bool)

(assert (=> b!408890 (=> (not res!236768) (not e!245353))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408890 (= res!236768 (or (= (select (arr!11812 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11812 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408891 () Bool)

(assert (=> b!408891 (= e!245351 tp_is_empty!10439)))

(declare-fun b!408892 () Bool)

(declare-fun res!236769 () Bool)

(assert (=> b!408892 (=> (not res!236769) (not e!245353))))

(declare-datatypes ((List!6819 0))(
  ( (Nil!6816) (Cons!6815 (h!7671 (_ BitVec 64)) (t!12001 List!6819)) )
))
(declare-fun arrayNoDuplicates!0 (array!24731 (_ BitVec 32) List!6819) Bool)

(assert (=> b!408892 (= res!236769 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6816))))

(declare-fun b!408893 () Bool)

(declare-fun res!236770 () Bool)

(assert (=> b!408893 (=> (not res!236770) (not e!245353))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24731 (_ BitVec 32)) Bool)

(assert (=> b!408893 (= res!236770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!17280 () Bool)

(assert (=> mapIsEmpty!17280 mapRes!17280))

(declare-fun b!408894 () Bool)

(declare-fun e!245350 () Bool)

(assert (=> b!408894 (= e!245353 e!245350)))

(declare-fun res!236772 () Bool)

(assert (=> b!408894 (=> (not res!236772) (not e!245350))))

(declare-fun lt!188859 () array!24731)

(assert (=> b!408894 (= res!236772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188859 mask!1025))))

(assert (=> b!408894 (= lt!188859 (array!24732 (store (arr!11812 _keys!709) i!563 k!794) (size!12164 _keys!709)))))

(declare-fun b!408895 () Bool)

(declare-fun res!236767 () Bool)

(assert (=> b!408895 (=> (not res!236767) (not e!245353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408895 (= res!236767 (validMask!0 mask!1025))))

(declare-fun b!408896 () Bool)

(declare-fun res!236766 () Bool)

(assert (=> b!408896 (=> (not res!236766) (not e!245353))))

(assert (=> b!408896 (= res!236766 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12164 _keys!709))))))

(declare-fun b!408897 () Bool)

(declare-fun res!236763 () Bool)

(assert (=> b!408897 (=> (not res!236763) (not e!245353))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408897 (= res!236763 (and (= (size!12165 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12164 _keys!709) (size!12165 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408898 () Bool)

(assert (=> b!408898 (= e!245352 (and e!245348 mapRes!17280))))

(declare-fun condMapEmpty!17280 () Bool)

(declare-fun mapDefault!17280 () ValueCell!4876)

