; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82174 () Bool)

(assert start!82174)

(declare-fun b!957323 () Bool)

(declare-fun e!539663 () Bool)

(declare-fun tp_is_empty!21125 () Bool)

(assert (=> b!957323 (= e!539663 tp_is_empty!21125)))

(declare-fun b!957324 () Bool)

(declare-fun res!640960 () Bool)

(declare-fun e!539662 () Bool)

(assert (=> b!957324 (=> (not res!640960) (not e!539662))))

(declare-datatypes ((array!58369 0))(
  ( (array!58370 (arr!28054 (Array (_ BitVec 32) (_ BitVec 64))) (size!28534 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58369)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58369 (_ BitVec 32)) Bool)

(assert (=> b!957324 (= res!640960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33667 () Bool)

(declare-fun mapRes!33667 () Bool)

(declare-fun tp!64273 () Bool)

(assert (=> mapNonEmpty!33667 (= mapRes!33667 (and tp!64273 e!539663))))

(declare-datatypes ((V!33149 0))(
  ( (V!33150 (val!10613 Int)) )
))
(declare-datatypes ((ValueCell!10081 0))(
  ( (ValueCellFull!10081 (v!13170 V!33149)) (EmptyCell!10081) )
))
(declare-fun mapValue!33667 () ValueCell!10081)

(declare-datatypes ((array!58371 0))(
  ( (array!58372 (arr!28055 (Array (_ BitVec 32) ValueCell!10081)) (size!28535 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58371)

(declare-fun mapRest!33667 () (Array (_ BitVec 32) ValueCell!10081))

(declare-fun mapKey!33667 () (_ BitVec 32))

(assert (=> mapNonEmpty!33667 (= (arr!28055 _values!1386) (store mapRest!33667 mapKey!33667 mapValue!33667))))

(declare-fun b!957325 () Bool)

(declare-fun e!539660 () Bool)

(assert (=> b!957325 (= e!539660 tp_is_empty!21125)))

(declare-fun b!957326 () Bool)

(assert (=> b!957326 (= e!539662 false)))

(declare-fun lt!430274 () Bool)

(declare-datatypes ((List!19649 0))(
  ( (Nil!19646) (Cons!19645 (h!20807 (_ BitVec 64)) (t!28020 List!19649)) )
))
(declare-fun arrayNoDuplicates!0 (array!58369 (_ BitVec 32) List!19649) Bool)

(assert (=> b!957326 (= lt!430274 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19646))))

(declare-fun b!957327 () Bool)

(declare-fun e!539661 () Bool)

(assert (=> b!957327 (= e!539661 (and e!539660 mapRes!33667))))

(declare-fun condMapEmpty!33667 () Bool)

(declare-fun mapDefault!33667 () ValueCell!10081)

