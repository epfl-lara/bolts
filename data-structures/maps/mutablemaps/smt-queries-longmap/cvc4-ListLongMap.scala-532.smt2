; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13262 () Bool)

(assert start!13262)

(declare-fun b!117126 () Bool)

(declare-fun b_free!2781 () Bool)

(declare-fun b_next!2781 () Bool)

(assert (=> b!117126 (= b_free!2781 (not b_next!2781))))

(declare-fun tp!10719 () Bool)

(declare-fun b_and!7321 () Bool)

(assert (=> b!117126 (= tp!10719 b_and!7321)))

(declare-fun b!117131 () Bool)

(declare-fun b_free!2783 () Bool)

(declare-fun b_next!2783 () Bool)

(assert (=> b!117131 (= b_free!2783 (not b_next!2783))))

(declare-fun tp!10721 () Bool)

(declare-fun b_and!7323 () Bool)

(assert (=> b!117131 (= tp!10721 b_and!7323)))

(declare-fun b!117120 () Bool)

(declare-fun e!76565 () Bool)

(declare-fun e!76571 () Bool)

(assert (=> b!117120 (= e!76565 e!76571)))

(declare-fun b!117121 () Bool)

(declare-fun res!57305 () Bool)

(declare-fun e!76558 () Bool)

(assert (=> b!117121 (=> (not res!57305) (not e!76558))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3389 0))(
  ( (V!3390 (val!1448 Int)) )
))
(declare-datatypes ((array!4622 0))(
  ( (array!4623 (arr!2190 (Array (_ BitVec 32) (_ BitVec 64))) (size!2451 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1060 0))(
  ( (ValueCellFull!1060 (v!3061 V!3389)) (EmptyCell!1060) )
))
(declare-datatypes ((array!4624 0))(
  ( (array!4625 (arr!2191 (Array (_ BitVec 32) ValueCell!1060)) (size!2452 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1028 0))(
  ( (LongMapFixedSize!1029 (defaultEntry!2727 Int) (mask!6949 (_ BitVec 32)) (extraKeys!2516 (_ BitVec 32)) (zeroValue!2594 V!3389) (minValue!2594 V!3389) (_size!563 (_ BitVec 32)) (_keys!4450 array!4622) (_values!2710 array!4624) (_vacant!563 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!820 0))(
  ( (Cell!821 (v!3062 LongMapFixedSize!1028)) )
))
(declare-datatypes ((LongMap!820 0))(
  ( (LongMap!821 (underlying!421 Cell!820)) )
))
(declare-fun thiss!992 () LongMap!820)

(assert (=> b!117121 (= res!57305 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2451 (_keys!4450 (v!3062 (underlying!421 thiss!992)))))))))

(declare-fun b!117122 () Bool)

(declare-fun e!76568 () Bool)

(declare-fun tp_is_empty!2807 () Bool)

(assert (=> b!117122 (= e!76568 tp_is_empty!2807)))

(declare-fun b!117123 () Bool)

(declare-fun e!76561 () Bool)

(assert (=> b!117123 (= e!76558 e!76561)))

(declare-fun res!57300 () Bool)

(assert (=> b!117123 (=> (not res!57300) (not e!76561))))

(declare-datatypes ((tuple2!2536 0))(
  ( (tuple2!2537 (_1!1278 (_ BitVec 64)) (_2!1278 V!3389)) )
))
(declare-datatypes ((List!1705 0))(
  ( (Nil!1702) (Cons!1701 (h!2301 tuple2!2536) (t!5999 List!1705)) )
))
(declare-datatypes ((ListLongMap!1663 0))(
  ( (ListLongMap!1664 (toList!847 List!1705)) )
))
(declare-fun lt!60802 () ListLongMap!1663)

(declare-fun lt!60794 () ListLongMap!1663)

(assert (=> b!117123 (= res!57300 (= lt!60802 lt!60794))))

(declare-fun newMap!16 () LongMapFixedSize!1028)

(declare-fun map!1361 (LongMapFixedSize!1028) ListLongMap!1663)

(assert (=> b!117123 (= lt!60794 (map!1361 newMap!16))))

(declare-fun getCurrentListMap!520 (array!4622 array!4624 (_ BitVec 32) (_ BitVec 32) V!3389 V!3389 (_ BitVec 32) Int) ListLongMap!1663)

(assert (=> b!117123 (= lt!60802 (getCurrentListMap!520 (_keys!4450 (v!3062 (underlying!421 thiss!992))) (_values!2710 (v!3062 (underlying!421 thiss!992))) (mask!6949 (v!3062 (underlying!421 thiss!992))) (extraKeys!2516 (v!3062 (underlying!421 thiss!992))) (zeroValue!2594 (v!3062 (underlying!421 thiss!992))) (minValue!2594 (v!3062 (underlying!421 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2727 (v!3062 (underlying!421 thiss!992)))))))

(declare-fun b!117124 () Bool)

(declare-fun e!76567 () Bool)

(assert (=> b!117124 (= e!76567 e!76565)))

(declare-fun b!117125 () Bool)

(declare-fun e!76564 () Bool)

(declare-fun e!76570 () Bool)

(assert (=> b!117125 (= e!76564 e!76570)))

(declare-fun res!57303 () Bool)

(assert (=> b!117125 (=> (not res!57303) (not e!76570))))

(declare-datatypes ((tuple2!2538 0))(
  ( (tuple2!2539 (_1!1279 Bool) (_2!1279 LongMapFixedSize!1028)) )
))
(declare-fun lt!60793 () tuple2!2538)

(assert (=> b!117125 (= res!57303 (and (_1!1279 lt!60793) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!3638 0))(
  ( (Unit!3639) )
))
(declare-fun lt!60810 () Unit!3638)

(declare-fun e!76562 () Unit!3638)

(assert (=> b!117125 (= lt!60810 e!76562)))

(declare-fun c!20704 () Bool)

(declare-fun contains!865 (ListLongMap!1663 (_ BitVec 64)) Bool)

(assert (=> b!117125 (= c!20704 (contains!865 lt!60794 (select (arr!2190 (_keys!4450 (v!3062 (underlying!421 thiss!992)))) from!355)))))

(declare-fun lt!60797 () V!3389)

(declare-fun update!178 (LongMapFixedSize!1028 (_ BitVec 64) V!3389) tuple2!2538)

(assert (=> b!117125 (= lt!60793 (update!178 newMap!16 (select (arr!2190 (_keys!4450 (v!3062 (underlying!421 thiss!992)))) from!355) lt!60797))))

(declare-fun e!76560 () Bool)

(declare-fun array_inv!1335 (array!4622) Bool)

(declare-fun array_inv!1336 (array!4624) Bool)

(assert (=> b!117126 (= e!76571 (and tp!10719 tp_is_empty!2807 (array_inv!1335 (_keys!4450 (v!3062 (underlying!421 thiss!992)))) (array_inv!1336 (_values!2710 (v!3062 (underlying!421 thiss!992)))) e!76560))))

(declare-fun b!117127 () Bool)

(declare-fun e!76557 () Bool)

(assert (=> b!117127 (= e!76557 tp_is_empty!2807)))

(declare-fun b!117128 () Bool)

(declare-fun e!76566 () Bool)

(assert (=> b!117128 (= e!76566 tp_is_empty!2807)))

(declare-fun b!117129 () Bool)

(declare-fun res!57304 () Bool)

(assert (=> b!117129 (=> (not res!57304) (not e!76558))))

(declare-fun valid!483 (LongMapFixedSize!1028) Bool)

(assert (=> b!117129 (= res!57304 (valid!483 newMap!16))))

(declare-fun b!117130 () Bool)

(declare-fun mapRes!4367 () Bool)

(assert (=> b!117130 (= e!76560 (and e!76557 mapRes!4367))))

(declare-fun condMapEmpty!4368 () Bool)

(declare-fun mapDefault!4367 () ValueCell!1060)

