; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35958 () Bool)

(assert start!35958)

(declare-fun b!361044 () Bool)

(declare-fun res!200907 () Bool)

(declare-fun e!221082 () Bool)

(assert (=> b!361044 (=> (not res!200907) (not e!221082))))

(declare-datatypes ((array!20253 0))(
  ( (array!20254 (arr!9613 (Array (_ BitVec 32) (_ BitVec 64))) (size!9965 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20253)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12131 0))(
  ( (V!12132 (val!4227 Int)) )
))
(declare-datatypes ((ValueCell!3839 0))(
  ( (ValueCellFull!3839 (v!6417 V!12131)) (EmptyCell!3839) )
))
(declare-datatypes ((array!20255 0))(
  ( (array!20256 (arr!9614 (Array (_ BitVec 32) ValueCell!3839)) (size!9966 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20255)

(assert (=> b!361044 (= res!200907 (and (= (size!9966 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!9965 _keys!1541) (size!9966 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361045 () Bool)

(declare-fun e!221083 () Bool)

(declare-fun tp_is_empty!8365 () Bool)

(assert (=> b!361045 (= e!221083 tp_is_empty!8365)))

(declare-fun mapNonEmpty!14067 () Bool)

(declare-fun mapRes!14067 () Bool)

(declare-fun tp!28143 () Bool)

(assert (=> mapNonEmpty!14067 (= mapRes!14067 (and tp!28143 e!221083))))

(declare-fun mapRest!14067 () (Array (_ BitVec 32) ValueCell!3839))

(declare-fun mapKey!14067 () (_ BitVec 32))

(declare-fun mapValue!14067 () ValueCell!3839)

(assert (=> mapNonEmpty!14067 (= (arr!9614 _values!1277) (store mapRest!14067 mapKey!14067 mapValue!14067))))

(declare-fun b!361046 () Bool)

(declare-fun res!200909 () Bool)

(assert (=> b!361046 (=> (not res!200909) (not e!221082))))

(assert (=> b!361046 (= res!200909 (and (bvsle #b00000000000000000000000000000000 (size!9965 _keys!1541)) (bvslt (size!9965 _keys!1541) #b01111111111111111111111111111111)))))

(declare-fun res!200910 () Bool)

(assert (=> start!35958 (=> (not res!200910) (not e!221082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35958 (= res!200910 (validMask!0 mask!1943))))

(assert (=> start!35958 e!221082))

(assert (=> start!35958 true))

(declare-fun e!221085 () Bool)

(declare-fun array_inv!7066 (array!20255) Bool)

(assert (=> start!35958 (and (array_inv!7066 _values!1277) e!221085)))

(declare-fun array_inv!7067 (array!20253) Bool)

(assert (=> start!35958 (array_inv!7067 _keys!1541)))

(declare-fun b!361047 () Bool)

(declare-fun e!221086 () Bool)

(assert (=> b!361047 (= e!221085 (and e!221086 mapRes!14067))))

(declare-fun condMapEmpty!14067 () Bool)

(declare-fun mapDefault!14067 () ValueCell!3839)

