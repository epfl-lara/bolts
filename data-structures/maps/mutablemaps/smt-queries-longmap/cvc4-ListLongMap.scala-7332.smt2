; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93714 () Bool)

(assert start!93714)

(declare-fun b!1059721 () Bool)

(declare-fun res!707947 () Bool)

(declare-fun e!603271 () Bool)

(assert (=> b!1059721 (=> (not res!707947) (not e!603271))))

(declare-datatypes ((array!66972 0))(
  ( (array!66973 (arr!32192 (Array (_ BitVec 32) (_ BitVec 64))) (size!32729 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66972)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66972 (_ BitVec 32)) Bool)

(assert (=> b!1059721 (= res!707947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059722 () Bool)

(declare-fun e!603269 () Bool)

(declare-fun tp_is_empty!24983 () Bool)

(assert (=> b!1059722 (= e!603269 tp_is_empty!24983)))

(declare-fun res!707949 () Bool)

(assert (=> start!93714 (=> (not res!707949) (not e!603271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93714 (= res!707949 (validMask!0 mask!1515))))

(assert (=> start!93714 e!603271))

(assert (=> start!93714 true))

(declare-datatypes ((V!38445 0))(
  ( (V!38446 (val!12542 Int)) )
))
(declare-datatypes ((ValueCell!11788 0))(
  ( (ValueCellFull!11788 (v!15153 V!38445)) (EmptyCell!11788) )
))
(declare-datatypes ((array!66974 0))(
  ( (array!66975 (arr!32193 (Array (_ BitVec 32) ValueCell!11788)) (size!32730 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66974)

(declare-fun e!603272 () Bool)

(declare-fun array_inv!24802 (array!66974) Bool)

(assert (=> start!93714 (and (array_inv!24802 _values!955) e!603272)))

(declare-fun array_inv!24803 (array!66972) Bool)

(assert (=> start!93714 (array_inv!24803 _keys!1163)))

(declare-fun mapNonEmpty!39139 () Bool)

(declare-fun mapRes!39139 () Bool)

(declare-fun tp!74946 () Bool)

(assert (=> mapNonEmpty!39139 (= mapRes!39139 (and tp!74946 e!603269))))

(declare-fun mapValue!39139 () ValueCell!11788)

(declare-fun mapRest!39139 () (Array (_ BitVec 32) ValueCell!11788))

(declare-fun mapKey!39139 () (_ BitVec 32))

(assert (=> mapNonEmpty!39139 (= (arr!32193 _values!955) (store mapRest!39139 mapKey!39139 mapValue!39139))))

(declare-fun b!1059723 () Bool)

(declare-fun e!603270 () Bool)

(assert (=> b!1059723 (= e!603272 (and e!603270 mapRes!39139))))

(declare-fun condMapEmpty!39139 () Bool)

(declare-fun mapDefault!39139 () ValueCell!11788)

