; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107226 () Bool)

(assert start!107226)

(declare-fun b!1270636 () Bool)

(declare-fun e!724401 () Bool)

(assert (=> b!1270636 (= e!724401 false)))

(declare-fun lt!574691 () Bool)

(declare-datatypes ((array!82981 0))(
  ( (array!82982 (arr!40023 (Array (_ BitVec 32) (_ BitVec 64))) (size!40560 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82981)

(declare-datatypes ((List!28661 0))(
  ( (Nil!28658) (Cons!28657 (h!29866 (_ BitVec 64)) (t!42197 List!28661)) )
))
(declare-fun arrayNoDuplicates!0 (array!82981 (_ BitVec 32) List!28661) Bool)

(assert (=> b!1270636 (= lt!574691 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28658))))

(declare-fun b!1270637 () Bool)

(declare-fun e!724402 () Bool)

(declare-fun tp_is_empty!32879 () Bool)

(assert (=> b!1270637 (= e!724402 tp_is_empty!32879)))

(declare-fun mapIsEmpty!50899 () Bool)

(declare-fun mapRes!50899 () Bool)

(assert (=> mapIsEmpty!50899 mapRes!50899))

(declare-fun b!1270638 () Bool)

(declare-fun e!724403 () Bool)

(assert (=> b!1270638 (= e!724403 tp_is_empty!32879)))

(declare-fun mapNonEmpty!50899 () Bool)

(declare-fun tp!97241 () Bool)

(assert (=> mapNonEmpty!50899 (= mapRes!50899 (and tp!97241 e!724403))))

(declare-datatypes ((V!49031 0))(
  ( (V!49032 (val!16514 Int)) )
))
(declare-datatypes ((ValueCell!15586 0))(
  ( (ValueCellFull!15586 (v!19149 V!49031)) (EmptyCell!15586) )
))
(declare-fun mapValue!50899 () ValueCell!15586)

(declare-fun mapRest!50899 () (Array (_ BitVec 32) ValueCell!15586))

(declare-fun mapKey!50899 () (_ BitVec 32))

(declare-datatypes ((array!82983 0))(
  ( (array!82984 (arr!40024 (Array (_ BitVec 32) ValueCell!15586)) (size!40561 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82983)

(assert (=> mapNonEmpty!50899 (= (arr!40024 _values!1134) (store mapRest!50899 mapKey!50899 mapValue!50899))))

(declare-fun b!1270639 () Bool)

(declare-fun res!845580 () Bool)

(assert (=> b!1270639 (=> (not res!845580) (not e!724401))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82981 (_ BitVec 32)) Bool)

(assert (=> b!1270639 (= res!845580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270640 () Bool)

(declare-fun e!724400 () Bool)

(assert (=> b!1270640 (= e!724400 (and e!724402 mapRes!50899))))

(declare-fun condMapEmpty!50899 () Bool)

(declare-fun mapDefault!50899 () ValueCell!15586)

